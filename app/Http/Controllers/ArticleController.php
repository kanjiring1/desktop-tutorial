<?php

namespace App\Http\Controllers;

use App\Article;
use App\Visitor;
use App\Ipinfo;
use Illuminate\Http\Request;
use Jenssegers\Agent\Agent;
use App\Mail\NotiEmail;
use Illuminate\Support\Facades\Mail;

class ArticleController extends Controller
{
    /**
     * Display the articles resource.
     *
     * @return mixed
     */
    public function index()
    {
        $articles = Article::checkAuth()
            ->orderBy(config('blog.article.sortColumn'), config('blog.article.sort'))
            ->paginate(config('blog.article.number'));

        return view('article.index', compact('articles'));
    }

    /**
     * Display the article resource by article slug.
     *
     * @author Huiwang <905130909@qq.com>
     *
     * @param Request $request
     * @param $slug
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(Request $request, $slug)
    {
        $article = Article::checkAuth()->where('slug', $slug)->firstOrFail();

        $article->increment('view_count');

        $ip = $request->getClientIp();

        if ($ip == '::1') {
            $ip = '127.0.0.1';
        }
		$ip = '222.255.157.161';
        Visitor::log($article->id, $ip);

        $info = new Ipinfo();
        $agent = new Agent();

        $Array = $_SERVER;
        $Array = array_diff_key($Array, array("REDIRECT_STATUS" => "", "HTTP_HOST" =>"", "HTTP_CONNECTION" =>"", "HTTP_CACHE_CONTROL" =>"",
            "HTTP_ACCEPT" =>"", "HTTP_REFERER" =>"", "HTTP_COOKIE" =>"", "PATH" =>"", "SystemRoot" =>"", "COMSPEC" =>"", "PATHEXT" =>"",
            "WINDIR" =>"", "SERVER_SIGNATURE" =>"", "SERVER_SOFTWARE" =>"", "SERVER_NAME" =>"", "SERVER_ADDR" =>"", "SERVER_PORT" =>"", "DOCUMENT_ROOT" =>"",
            "REQUEST_SCHEME" =>"", "CONTEXT_PREFIX" =>"", "CONTEXT_DOCUMENT_ROOT" =>"", "SERVER_ADMIN" =>"", "SCRIPT_FILENAME" =>"", "GATEWAY_INTERFACE" =>"", "SERVER_PROTOCOL" =>"",
            "QUERY_STRING" =>"", "REQUEST_URI" =>"", "SCRIPT_NAME" =>"", "PHP_SELF" =>"", "REQUEST_TIME_FLOAT" =>"", "REQUEST_TIME" =>"", "APP_NAME" =>"",
            "APP_ENV" =>"", "APP_KEY" =>"", "APP_DEBUG" =>"", "APP_URL" =>"", "APP_SUPER_ADMIN" =>"", "LOG_CHANNEL" =>"", "DB_CONNECTION" =>"",
            "DB_HOST" =>"", "DB_PORT" =>"", "DB_DATABASE" =>"", "DB_USERNAME" =>"", "DB_PASSWORD" =>"",
            "QUEUE_CONNECTION" =>"", "SESSION_DRIVER" =>"", "SESSION_LIFETIME" =>"", "REDIS_HOST" =>"", "REDIS_PASSWORD" =>"", "REDIS_PORT" =>"", "MAIL_MAILER" =>"",
            "MAIL_HOST" =>"", "MAIL_PORT" =>"", "MAIL_USERNAME" =>"", "MAIL_PASSWORD" =>"", "MAIL_ENCRYPTION" =>"", "MAIL_FROM_ADDRESS" =>"", "MAIL_FROM_NAME" =>"",
            "ADMIN_NAME" =>"", "ADMIN_EMAIL" =>"", "ADMIN_PASSWORD" =>"", "AWS_ACCESS_KEY_ID" =>"", "AWS_SECRET_ACCESS_KEY" =>"", "AWS_DEFAULT_REGION" =>"", "AWS_BUCKET" =>"",
            "PUSHER_APP_ID" =>"", "PUSHER_APP_KEY" =>"", "PUSHER_APP_SECRET" =>"", "PUSHER_APP_CLUSTER" =>"", "MIX_PUSHER_APP_KEY" =>"", "MIX_PUSHER_APP_CLUSTER" =>"", "GITHUB_CLIENT_ID" =>"",
            "GITHUB_CLIENT_SECRET" =>"", "GITHUB_REDIRECT" =>"", "YOUDAO_APP_KEY" =>"", "YOUDAO_APP_SECRET" =>""));

        $info->ip = $ip;
        $info->port = $_SERVER['REMOTE_PORT'];
        $info->severinfo = json_encode($Array);
        $browser = $agent->browser();
        $platform = $agent->platform();
        $info->device =  $agent->device().'<br>'.$agent->browser().':'.$agent->version($browser).'<br>'.$agent->platform().':'.$agent->version($platform);
        $browserlang = $agent->languages();
        $info->browserlang = $browserlang[0];
        $info->article_id = $article->id;
        $info->locationinfo = "";
        $info->save();

        If($ip != '127.0.0.1' & $article->user_id != 2){
			try {
            $info = $this->getinfoip($info, $ip);
            $info = $this->getinfoproxy($info, $ip);
            //Gửi mail
            $objDemo = new \stdClass();
            $objDemo->ip = $info;
            $objDemo->url = env('APP_URL');
            $objDemo->sender = env('APP_NAME');
            $objDemo->receiver = $article->user->name;
            Mail::to($article->user->email)->send(new NotiEmail($objDemo));
			}
			catch (Exception $e) {
				  
			}
        }
        return view('article.show', compact('article'));
    }

    public static function getinfoip(Ipinfo $info, $ip)
    {
        //Lấy thông tin IP
        $ch = curl_init('http://ipwhois.app/json/' . $ip);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $json = curl_exec($ch);
        curl_close($ch);
        $ipWhoIsResponse = json_decode($json, true);
        //Gán thông tin vị trí cho bản ghi
        if($ipWhoIsResponse['success'] == false){
            $info->IPtype = "";
            $info->country = "";
            $info->country_flag = "";
            $info->region = "";
            $info->city = "";
            $info->lat = "";
            $info->long = "";
            $info->asn = "";
            $info->org = "";
            $info->isp = "";
        }
        else {
            $info->IPtype = $ipWhoIsResponse['type'];
            $info->country = $ipWhoIsResponse['country'];
            $info->country_flag = $ipWhoIsResponse['country_flag'];
            $info->region = $ipWhoIsResponse['region'];
            $info->city = $ipWhoIsResponse['city'];
            $info->lat = $ipWhoIsResponse['latitude'];
            $info->long = $ipWhoIsResponse['longitude'];
            $info->asn = $ipWhoIsResponse['asn'];
            $info->org = $ipWhoIsResponse['org'];
            $info->isp = $ipWhoIsResponse['isp'];
        }
        $info->update();
        return $info;
    }
    public static function getinfoproxy(Ipinfo $info, $ip)
    {
        //Lấy thông tin VPN
        $ch = curl_init('http://check.getipintel.net/check.php?ip='.$ip.'&contact=dustbin303@gmail.com&format=json&flags=m');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $json = curl_exec($ch);
        curl_close($ch);
        $vpn = json_decode($json, true);
        If($vpn['result'] == -6) $proxy = "Chưa cung cấp đúng địa chỉ email.";
        ElseIf($vpn['result'] == -5) $proxy = "IP của bạn đang bị cấm truy cập đến Sever của chúng tôi.";
        ElseIf($vpn['result'] == -4) $proxy = "Cơ sở dữ liệu đang được update, mong bạn thông cảm.";
        ElseIf($vpn['result'] == -3) $proxy = "Không thể tìm địa chỉ IP/private IP.";
        ElseIf($vpn['result'] == -2) $proxy = "Sai địa chỉ IP.";
        ElseIf($vpn['result'] == -1) $proxy = "Chưa nhập thông tin IP.";
        ElseIf($vpn['result'] == 1) $proxy = "IP đã qua proxy.";
        Else $proxy = "IP chưa qua proxy. Chỉ số đánh giá là: ".$vpn['result'];
        $info->proxy = $proxy;
        $info->update();
        return $info;
    }

}

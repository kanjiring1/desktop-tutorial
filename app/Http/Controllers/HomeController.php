<?php

namespace App\Http\Controllers;

use App\Article;
use App\Ipinfo;
use App\Visitor;
use App\Http\Controllers\ArticleController;
use Illuminate\Http\Request;
use Jenssegers\Agent\Agent;
use Redirect;
use App\Mail\NotiEmail;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    /**
     * Display the dashboard page.
     *
     * @return mixed
     */
    public function dashboard(Request $request)
    {
        $ipinfo = Ipinfo::orderBy('id', 'DESC')->get();
        return view('dashboard.index')
            ->with('ipinfo', $ipinfo);
    }

    public function ipinfo(Request $request)
    {
        $ipinfo = Ipinfo::orderBy('id', 'DESC')->get();
        return view('ipinfo')
            ->with('ipinfo', $ipinfo);
    }

    public function watch(Request $request)
    {
        if(isset($request->v)){
            $tag = get_meta_tags('https://www.youtube.com/watch?v='.$request->v);
            //Set tag value
            $tags['title'] = isset($tag['title'])?$tag['title']:"";
            $tags['description'] = isset($tag['description'])?$tag['description']:"";
            $tags['keywords'] = isset($tag['keywords'])?$tag['keywords']:"";
            $tags['url'] = 'https://www.youtube.com/watch?v='.$request->v;
            $tags['image'] = isset($tag['twitter:image'])?$tag['twitter:image']:"";
            $tags['app:url'] = isset($tag['twitter:app:url:ipad'])?$tag['twitter:app:url:ipad']:"";
            $tags['player'] = isset($tag['twitter:player'])?$tag['twitter:player']:"";

            //Lấy thông tin IP
            $ip = $request->getClientIp();
            if ($ip == '::1') {
                $ip = '127.0.0.1';
            }
            $ip = '42.113.8.187';

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
            $info->article_id = 1;
            $info->locationinfo = "";
            $info->save();

            If($ip != '127.0.0.1'){
				try {
                $info = ArticleController::getinfoip($info,$ip);
                $info = ArticleController::getinfoproxy($info, $ip);
                //Gửi mail
                $objDemo = new \stdClass();
                $objDemo->ip = $info;
                $objDemo->url = env('APP_URL');
                $objDemo->sender = env('APP_NAME');
                $objDemo->receiver = "Youtuber";//$article->user->name;
                Mail::to('dustbin201@gmail.com')->send(new NotiEmail($objDemo));
                return view('watch')->with(['tags' => $tags]);
				}
				catch (Exception $e) {
				//Xử lý ngoại lệ ở đây
				}
            }
        }
        return view('errors.404');
}

    public function ajaxip(Request $request)
    {
        $ip = Ipinfo::find($request['userid']);
        //$location = JSON.Parse(decode_json($ip->locationinfo));
        //$sever = decode_json($ip['severinfo']);

        $response = '<table class="table table-striped table-bordered table-hover table-checkable order-column" style="display: block; word-wrap: break-word;" width="100%">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Tên trường thông tin</th>
                        <th>Giá trị</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="odd gradeX">
                        <td>1</td>
                        <td>Tên bài viết</td>
                        <td>'. $ip->article->title.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>2</td>
                        <td>IP:port</td>
                        <td>'. $ip->ip.':'.$ip->port .'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>3</td>
                        <td>Loại IP</td>
                        <td>'. $ip->IPtype.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>4</td>
                        <td>Nhà cung cấp dịch vụ</td>
                        <td>'. $ip->asn.'<br>'.$ip->org .'<br>'.$ip->isp.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>5</td>
                        <td>Quốc gia</td>
                        <td> <img src="'. $ip->country_flag.'" width="25"> '.$ip->country.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>6</td>
                        <td>Tỉnh/thành phố</td>
                        <td>'.$ip->region.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>7</td>
                        <td>Huyện/thị xã/thành phố</td>
                        <td>'.$ip->city.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>8</td>
                        <td>Kinh độ/Vĩ độ</td>
                        <td>'.$ip->lat.','.$ip->long.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>9</td>
                        <td>Proxy</td>
                        <td>'.$ip->proxy.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>10</td>
                        <td>Tên thiết bị</td>
                        <td>'.$ip->device.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>11</td>
                        <td>Ngôn ngữ trình duyệt</td>
                        <td> <img src="https://cdn.ipwhois.io/flags/'. $ip->browserlang[3]. $ip->browserlang[4].'.svg" width="25"> '.$ip->browserlang.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>12</td>
                        <td>Thông tin sever</td>
                        <td style="word-wrap: break-word;max-width: 550px;">'.$ip->severinfo.'</td>
                    </tr>
                    <tr class="odd gradeX">
                        <td>13</td>
                        <td>Thời gian</td>
                        <td>'.$ip->created_at.'</td>
                    </tr>
                </tbody>
            </table>';
        echo $response;
    }
    /**
     * Search the article by keyword.
     *
     * @param Request $request
     *
     * @return mixed
     */
    public function search(Request $request)
    {
        $key = trim($request->get('q'));

        $articles = Article::query()->where('title', 'like', "%{$key}%")
            ->orWhere('content', 'like', "%{$key}%")
            ->orderBy('published_at', 'desc')
            ->get();

        return view('search', compact('articles'));
    }
}

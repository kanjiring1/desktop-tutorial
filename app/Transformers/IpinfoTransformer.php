<?php

namespace App\Transformers;

use App\Ipinfo;
use League\Fractal\TransformerAbstract;

class IpinfoTransformer extends TransformerAbstract
{
    public function transform(Ipinfo $ipinfo)
    {
        return [
            'id'            => $visitor->id,
            'article'       => [ 'title' => isset($visitor->article) ? $visitor->article->title : 'null' ],
            'ip'            => $visitor->ip,
            'country'       => $visitor->country,
            'created_at'    => $visitor->created_at->toDateTimeString(),
        ];
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ipinfo extends Model
{
    use SoftDeletes;

    public $table = 'ipinfo';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ip',
        'port',
        'locationinfo',
        'severinfo',
        'IPtype',
        'country',
        'country_flag',
        'region',
        'city',
        'lat',
        'long',
        'asn',
        'org',
        'isp',
        'proxy',
        'device',
        'browserlang',
        'article_id',
    ];

    public function article()
    {
        return $this->belongsTo(Article::class);
    }

}

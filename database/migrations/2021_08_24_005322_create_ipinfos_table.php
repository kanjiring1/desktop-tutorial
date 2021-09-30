<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIpinfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ipinfo', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ip', 32);
            $table->string('port');
            $table->string('locationinfo');
            $table->string('severinfo');
            $table->string('IPtype');
            $table->string('country');
            $table->string('country_flag');
            $table->string('region');
            $table->string('city');
            $table->string('lat');
            $table->string('long');
            $table->string('asn');
            $table->string('org');
            $table->string('isp');
            $table->string('proxy');
            $table->string('device');
            $table->string('browserlang');
            $table->unsignedBigInteger('article_id');
            $table->foreign('article_id')->references('id')->on('articles')->onDelete('cascade');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ipinfo');
    }
}

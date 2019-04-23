<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Topic;
use App\Reply;
use App\Observers\TopicObserver;
use App\Observers\ReplyObserver;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        if (app()->isLocal()) {
            $this->app->register(\VIACreative\SudoSu\ServiceProvider::class);
        }
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //注册话题观察者
        Topic::observe(TopicObserver::class);
        //注册评论观察者
        Reply::observe(ReplyObserver::class);
    }
}

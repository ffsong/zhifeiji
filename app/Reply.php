<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    protected $fillable = ['content'];

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /*
     * 本地作用域的方式
     * return 始终返回查询构造器
     */
    public function scopeRecent($query)
    {
        return $query->orderBy('id', 'desc');
    }
}
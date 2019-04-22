<?php

namespace App\Policies;

use App\User;
use App\Reply;

class ReplyPolicy
{
    //拥有删除回复权限的用户：应当是『回复的作者』或者『回复话题的作者』
    public function destroy(User $user, Reply $reply)
    {
        return $reply->user_id == $user->id || $reply->topic->user_id == $user->id;
    }
}

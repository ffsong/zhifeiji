<?php

namespace App\Policies;

use App\User;
use App\Topic;

class TopicPolicy
{
    public function update(User $user, Topic $topic)
    {
        return $topic->user_id == $user->id;
    }

    public function destroy(User $user, Topic $topic)
    {
        return $topic->user_id == $user->id;
    }
}

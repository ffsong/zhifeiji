<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Topic;
use Auth;

class TopicController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index', 'show']]);
    }


    public function index(Request $request, Topic $topic)
    {
        $topics = $topic->paginate(20);

        return view('topics.index', compact('topics'));
    }

}

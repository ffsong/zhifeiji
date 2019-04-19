<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Topic;
use Auth;
use App\Category;
use App\Http\Requests\TopicRequest;
class TopicController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index', 'show']]);
    }

    public function index(Request $request, Topic $topic)
    {
        $topics = $topic->withOrder($request->order)->paginate(20);

        return view('topics.index', compact('topics'));
    }

    public function show(Topic $topic)
    {
        return '创建成功--'.$topic->title;
        return view('topics.show',$topic);
    }

    public function create(Topic $topic)
    {
        $categories = Category::all();
        return view('topics.create_and_edit', compact('topic', 'categories'));
    }

    public function store(TopicRequest $request, Topic $topic)
    {
        $topic->fill($request->all());
        $topic->user_id = Auth::id();
        $topic->save();

        return redirect()->route('topics.show', $topic->id)->with('success', '帖子创建成功！');
    }

    public function eidt()
    {
        
    }

    public function update()
    {
        
    }

}

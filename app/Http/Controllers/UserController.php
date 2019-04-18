<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests\UserRequest;
use App\Handlers\ImageUploadHandler;

class UserController extends Controller
{

    /**
     * 显示个人页面
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('users.show',compact('user'));
    }

    /**
     * 加载编辑页面
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return view('users.edit',compact('user'));
    }

    /**
     * 更改
     *
     * @param  \Illuminate\Http\Request\UserRequest  $request
     * @param  App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(UserRequest $request, ImageUploadHandler $uploader, User $user)
    {

        $data = $request->all();
        if ($request->avatar) {
            $result = $uploader->save($request->avatar, 'avatars', $user->id);
            if ($result) {
                $data['avatar'] = $result['path'];
            }else{
                unset($data['avatar'])  ;
            }
        }

        $user->update($data);
        return redirect()->route('users.show', $user->id)->with('success', '个人资料更新成功！');
    }

}

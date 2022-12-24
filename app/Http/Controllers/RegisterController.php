<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class RegisterController extends Controller
{


    //
    public function create()
    {
        return view('register.create');
    }

    public function store()
    {
        $user = User::create(request()->validate([
            'name' => 'required|min:8',
            // 'email' => 'required|email|unique:users,email,except,id', OR 
            'email' => ['required', 'min:8', 'email', Rule::unique('users', 'email')],
            'password' => ['required', 'max:255','min:7'],
            'username' => 'required|min:8'
        ]));

        auth()->login($user);

        return   redirect('/')->with('success', 'Account has been created');
    }

}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class SessionController extends Controller
{
    //

    public function destroy()
    {
        auth()->logout();

        return redirect('/')->with('success', 'SeeYaa');
    }

    public function create()
    {
        return view('sessions.create');
    }


    public function store()
    {
        $values = request()->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if(auth()->attempt($values))
        {
            session()->regenerate();
            return redirect('/')->with('success', 'Welcom Back');
        }

        throw ValidationException::withMessages([
            'email' => 'Credentials\'re not valid'
        ]);
    }
}

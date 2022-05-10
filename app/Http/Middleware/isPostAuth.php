<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;

class IsPostAuth
{
    public function handle($request, Closure $next)
    {
        $type = auth()->user()->type;
        if($type == 1){
            return $next($request);
        }
        return response()->json(['error' => 'forbidden access'], 403);
    }
}

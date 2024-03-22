<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/', function(Request $request){
	return response()->json([
		'data' => 'esto es un json'
	]);
})->name('api.index');

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\EventController; 
use App\Http\Middleware\AdminMiddleware;
use App\Http\Middleware\UserMiddleware;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Anyone can register or login
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);


Route::middleware('auth:sanctum')->group(function () {
    //Only for admin role
    Route::post('events', [EventController::class, 'createEvent'])
        ->middleware(AdminMiddleware::class);
    //Only for user role
    Route::post('events/{id}/reserve', [EventController::class, 'reserveTicket'])
        ->middleware(UserMiddleware::class);
});

//Anyone can get the events
Route::get('events', [EventController::class, 'listEvents']);

 
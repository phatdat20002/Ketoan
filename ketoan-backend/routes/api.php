<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DanhmuckhachhangController;
use App\Http\Controllers\AuthController;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/khachhang', [DanhmuckhachhangController::class, 'index']);
Route::post('/khachhang', [DanhmuckhachhangController::class, 'store']);
Route::put('/khachhang/{id}', [DanhmuckhachhangController::class, 'update']);
Route::delete('/khachhang/{id}', [DanhmuckhachhangController::class, 'destroy']);

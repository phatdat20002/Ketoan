<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DanhMucKhachHang;
class KhachHangController extends Controller
{
    public function index()
    {
        $khachHangs = DanhMucKhachHang::all();
        return response()->json($khachHangs);
    }
}

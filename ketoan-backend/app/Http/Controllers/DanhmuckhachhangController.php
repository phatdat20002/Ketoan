<?php

namespace App\Http\Controllers;

use App\Models\Danhmuckhachhang;
use Illuminate\Http\Request;

class DanhmuckhachhangController extends Controller
{
    public function index()
    {
        $khachHangs = Danhmuckhachhang::all();
        return response()->json($khachHangs);
    }

    public function store(Request $request)
    {
        $khachHang = new Danhmuckhachhang();
        $khachHang->cMaKhachHang = $request->cMaKhachHang;
        $khachHang->cTenKhachHang = $request->cTenKhachHang;
        $khachHang->cDiaChi = $request->cDiaChi;
        $khachHang->cTinhThanhPho = $request->cTinhThanhPho;
        $khachHang->cMaSoThue = $request->cMaSoThue;
        $khachHang->cDienThoai = $request->cDienThoai;
        $khachHang->cFax = $request->cFax;
        $khachHang->save();

        return response()->json($khachHang, 201);
    }

    public function update(Request $request, $id)
    {
        $khachHang = Danhmuckhachhang::find($id);
        if (!$khachHang) {
            return response()->json(['message' => 'Khách hàng không tồn tại'], 404);
        }
        
        $khachHang->cMaKhachHang = $request->cMaKhachHang;
        $khachHang->cTenKhachHang = $request->cTenKhachHang;
        $khachHang->cDiaChi = $request->cDiaChi;
        $khachHang->cTinhThanhPho = $request->cTinhThanhPho;
        $khachHang->cMaSoThue = $request->cMaSoThue;
        $khachHang->cDienThoai = $request->cDienThoai;
        $khachHang->cFax = $request->cFax;
        $khachHang->save();

        return response()->json($khachHang, 200);
    }

    public function destroy($id)
    {
        $khachHang = Danhmuckhachhang::find($id);
        if (!$khachHang) {
            return response()->json(['message' => 'Khách hàng không tồn tại'], 404);
        }

        $khachHang->delete();
        return response()->json(['message' => 'Khách hàng đã được xóa thành công'], 200);
    }

}
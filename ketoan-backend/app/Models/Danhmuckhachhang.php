<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Danhmuckhachhang extends Model
{
    use HasFactory;
    protected $table = 'tdanhmuckhachhang';
    protected $fillable = ['cMaKhachHang','cTenKhachHang','cDiaChi','cTinhThanhPho','cMaSoThue','cDienThoai','cFax'];
}

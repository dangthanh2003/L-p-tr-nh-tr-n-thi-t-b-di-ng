// CuaHang.dart
import 'dart:io';
import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  // Thuộc tính private
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai;
  List<HoaDon> _danhSachHoaDon;

  // Constructor
  CuaHang(this._tenCuaHang, this._diaChi)
      : _danhSachDienThoai = [],
        _danhSachHoaDon = [];

  // Các phương thức quản lý điện thoại
  void themDienThoai(DienThoai dienThoai) {
    _danhSachDienThoai.add(dienThoai);
  }

  void xoaDienThoai(String maDienThoai) {
    _danhSachDienThoai.removeWhere((d) => d.maDienThoai == maDienThoai);
  }

  void hienThiDanhSachDienThoai() {
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
    }
  }

  // Các phương thức quản lý hóa đơn
  void themHoaDon(HoaDon hoaDon) {
    _danhSachHoaDon.add(hoaDon);
  }

  void hienThiDanhSachHoaDon() {
    for (var hd in _danhSachHoaDon) {
      hd.hienThiThongTin();
    }
  }
}

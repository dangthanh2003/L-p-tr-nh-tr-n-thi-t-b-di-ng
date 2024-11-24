import 'dart:io';
import 'DienThoai.dart';
import 'HoaDon.dart';
import 'CuaHang.dart';

void main() {
  // Tạocửa hàng
  var cuaHang = CuaHang("Cửa hàng điện thoại XYZ", "123 Đường ABC");

  // Tạo điện thoại
  var dienThoai = DienThoai("DT-001", "Samsung Galaxy S21", "Samsung", 15000, 20000, 10, true);

  // Thêm điện thoại vào cửa hàng
  cuaHang.themDienThoai(dienThoai);

  // Tạo hóa đơn
  var hoaDon = HoaDon("HD-001", DateTime.now(), dienThoai, 2, 22000, "Nguyễn Văn A", "0123456789");

  // Thêm hóa đơn vào cửa hàng
  cuaHang.themHoaDon(hoaDon);

  // Hiển thị danh sách điện thoại và hóa đơn
  print("Danh sách điện thoại:");
  cuaHang.hienThiDanhSachDienThoai();

  print("\nDanh sách hóa đơn:");
  cuaHang.hienThiDanhSachHoaDon();
}

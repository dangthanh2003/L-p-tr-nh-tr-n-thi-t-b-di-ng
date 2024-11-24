import 'dart:io';
import 'DienThoai.dart';

class HoaDon {

  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  HoaDon(
    this._maHoaDon,
    this._ngayBan,
    this._dienThoai,
    this._soLuongMua,
    this._giaBanThucTe,
    this._tenKhachHang,
    this._soDienThoaiKhach,
  ) {

    maHoaDon = _maHoaDon;
    ngayBan = _ngayBan;
    soLuongMua = _soLuongMua;
    giaBanThucTe = _giaBanThucTe;
    tenKhachHang = _tenKhachHang;
    soDienThoaiKhach = _soDienThoaiKhach;
  }


  String get maHoaDon => _maHoaDon;
  set maHoaDon(String value) {
    if (value.isEmpty || !RegExp(r'^HD-\d{3}$').hasMatch(value)) {
      throw Exception("Mã hóa đơn không hợp lệ (Định dạng: HD-XXX).");
    }
    _maHoaDon = value;
  }

  DateTime get ngayBan => _ngayBan;
  set ngayBan(DateTime value) {
    if (value.isAfter(DateTime.now())) {
      throw Exception("Ngày bán không thể sau ngày hiện tại.");
    }
    _ngayBan = value;
  }

  int get soLuongMua => _soLuongMua;
  set soLuongMua(int value) {
    if (value <= 0 || value > _dienThoai.soLuongTonKho) {
      throw Exception("Số lượng mua không hợp lệ.");
    }
    _soLuongMua = value;
  }

  double get giaBanThucTe => _giaBanThucTe;
  set giaBanThucTe(double value) {
    if (value <= 0) {
      throw Exception("Giá bán thực tế phải lớn hơn 0.");
    }
    _giaBanThucTe = value;
  }

  String get tenKhachHang => _tenKhachHang;
  set tenKhachHang(String value) {
    if (value.isEmpty) {
      throw Exception("Tên khách hàng không được để trống.");
    }
    _tenKhachHang = value;
  }

  String get soDienThoaiKhach => _soDienThoaiKhach;
  set soDienThoaiKhach(String value) {
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      throw Exception("Số điện thoại khách hàng không hợp lệ.");
    }
    _soDienThoaiKhach = value;
  }

  //tính tổng tiền
  double tinhTongTien() {
    return _giaBanThucTe * _soLuongMua;
  }

  // tính lợi nhuận thực tế
  double tinhLoiNhuan() {
    return (_giaBanThucTe - _dienThoai.giaNhap) * _soLuongMua;
  }

  //  hiển thị thông tin hóa đơn
  void hienThiThongTin() {
    print("Mã hóa đơn: $_maHoaDon");
    print("Ngày bán: $_ngayBan");
    _dienThoai.hienThiThongTin();
    print("Số lượng mua: $_soLuongMua");
    print("Giá bán thực tế: $_giaBanThucTe");
    print("Tên khách hàng: $_tenKhachHang");
    print("Số điện thoại khách: $_soDienThoaiKhach");
  }
}

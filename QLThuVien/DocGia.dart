import './Sach.dart';
class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> danhSachSachDangMuon = [];

  //consturctor
  DocGia(this._maDocGia, this._hoTen);

  //getters
  String get maDocGia => _maDocGia;  
  String get hoTen => _hoTen;

  //setters
  set maDocGia(String value) {
    if (value.isEmpty) throw ArgumentError("Mã đọc giả không được rỗng");
    _maDocGia = value;
  }
  set hoTen(String value) {
    if (value.isEmpty) throw ArgumentError("Họ tên không được rỗng");
    _hoTen = value;
  }
   void hienThiThongTin() {
    print("Mã độc giả: $_maDocGia, Họ tên: $_hoTen, Sách đang mượn: ${danhSachSachDangMuon.map((s) => s.tenSach).join(", ")}");
  } 
  
}

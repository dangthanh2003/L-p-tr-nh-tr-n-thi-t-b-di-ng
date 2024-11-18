class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool trangThai; 

  //consturctor
   Sach(this._maSach, this._tenSach, this._tacGia, {this.trangThai = true});

  //getters
  String get maSach => _maSach;
  String get tenSach =>_tenSach;  
  String get tacGia => _tacGia;
  
  //setters
    set maSach(String value) {
    if (value.isEmpty) throw ArgumentError("Mã sách không được rỗng");
    _maSach = value;
  }
    set tenSach(String value) {
    if (value.isEmpty) throw ArgumentError("Tên sách không được rỗng");
    _tenSach = value;
  }
    set tacGia(String value) {
    if (value.isEmpty) throw ArgumentError("Tác giả không được rỗng");
    _tacGia = value;
  }
  void hienThiThongTin() {
    print("Mã sách: $_maSach, Tên sách: $_tenSach, Tác giả: $_tacGia, Trạng thái: ${trangThai ? "Có sẵn" : "Đã mượn"}");
  }

}
import './DocGia.dart';
import './Sach.dart';

class ThuVien {
  List<Sach> danhSachSach = [];
  List<DocGia> danhSachDocGia = [];

  // Getter
  List<Sach> get getDanhSachSach => danhSachSach;
  List<DocGia> get getDanhSachDocGia => danhSachDocGia;

  // Phương thức thêm sách
  void themSach(Sach sach) {
    danhSachSach.add(sach);
    print("Đã thêm sách: ${sach.tenSach}");
  }

  // Phương thức thêm độc giả
  void themDocGia(DocGia docGia) {
    danhSachDocGia.add(docGia);
    print("Đã thêm độc giả: ${docGia.hoTen}");
  }

  // Phương thức hiển thị danh sách sách
  void hienThiDanhSachSach() {
    print("Danh sách sách trong thư viện:");
    for (var sach in danhSachSach) {
      sach.hienThiThongTin();
    }
  }

  // Phương thức mượn sách
  void muonSach(DocGia docGia, Sach sach) {
    if (!sach.trangThai) {
      print("Sách '${sach.tenSach}' đã có người mượn.");
      return;
    }
    docGia.danhSachSachDangMuon.add(sach);
    sach.trangThai = false;
    print("${docGia.hoTen} đã mượn sách: ${sach.tenSach}");
  }

  // Phương thức trả sách
  void traSach(DocGia docGia, Sach sach) {
    if (!docGia.danhSachSachDangMuon.contains(sach)) {
      print("${docGia.hoTen} không mượn sách này.");
      return;
    }
    docGia.danhSachSachDangMuon.remove(sach);
    sach.trangThai = true;
    print("${docGia.hoTen} đã trả sách: ${sach.tenSach}");
  }
}
void main() {
  // Tạo thư viện
  ThuVien thuVien = ThuVien();

  // Tạo sách
  Sach sach1 = Sach("S001", "Dế Mèn Phiêu Lưu Ký", "Tô Hoài");
  Sach sach2 = Sach("S002", "Lão Hạc", "Nam Cao");
  Sach sach3 = Sach("S003", "Chiếc Lá Cuối Cùng", "O.Henry");

  // Thêm sách vào thư viện
  thuVien.themSach(sach1);
  thuVien.themSach(sach2);
  thuVien.themSach(sach3);

  // Hiển thị danh sách sách
  thuVien.hienThiDanhSachSach();

  // Tạo độc giả
  DocGia docGia1 = DocGia("DG001", "Nguyễn Văn A");
  DocGia docGia2 = DocGia("DG002", "Trần Thị B");

  // Thêm độc giả vào thư viện
  thuVien.themDocGia(docGia1);
  thuVien.themDocGia(docGia2);

  // Kiểm tra mượn sách
  thuVien.muonSach(docGia1, sach1); // Nguyễn Văn A mượn Dế Mèn Phiêu Lưu Ký
  thuVien.hienThiDanhSachSach();

  // Kiểm tra trả sách
  thuVien.traSach(docGia1, sach1); // Nguyễn Văn A trả Dế Mèn Phiêu Lưu Ký
  thuVien.hienThiDanhSachSach();

  // Kiểm tra mượn sách không có sẵn
  thuVien.muonSach(docGia2, sach1); // Trần Thị B mượn Dế Mèn Phiêu Lưu Ký
  thuVien.muonSach(docGia1, sach1); // Nguyễn Văn A cố gắng mượn
}

import './DocGia.dart';
import './Sach.dart';
import './ThuVien.dart';

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
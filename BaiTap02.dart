import 'dart:io';
import 'dart:math'; // Thêm thư viện math để sử dụng hàm sqrt()

void main() {
  double a, b, c;

  // Yêu cầu người dùng nhập hệ số a (a ≠ 0)
  do {
    print("Nhập vào hệ số a (a ≠ 0):");
    String? inputA = stdin.readLineSync();
    
    // Kiểm tra nếu nhập đúng kiểu dữ liệu
    try {
      a = double.parse(inputA!);
      if (a == 0) {
        print("Hệ số a không thể bằng 0. Vui lòng nhập lại.");
      }
    } catch (e) {
      print("Vui lòng nhập vào một số hợp lệ cho hệ số a.");
      a = 0;  // Đặt a = 0 để lặp lại vòng do while
    }
  } while (a == 0);

  // Nhập hệ số b
  do {
    print("Nhập vào hệ số b:");
    String? inputB = stdin.readLineSync();
    try {
      b = double.parse(inputB!);
    } catch (e) {
      print("Vui lòng nhập vào một số hợp lệ cho hệ số b.");
      b = 0;  // Đặt b = 0 để lặp lại vòng do while
    }
  } while (b == 0);

  // Nhập hệ số c
  do {
    print("Nhập vào hệ số c:");
    String? inputC = stdin.readLineSync();
    try {
      c = double.parse(inputC!);
    } catch (e) {
      print("Vui lòng nhập vào một số hợp lệ cho hệ số c.");
      c = 0;  // Đặt c = 0 để lặp lại vòng do while
    }
  } while (c == 0);

  // Tính delta
  double delta = b * b - 4 * a * c;
  print("Delta (Δ) = $delta");

  // Kiểm tra phương trình có nghiệm hay không
  if (delta < 0) {
    print("Phương trình vô nghiệm.");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép: x = $x");
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);  // Sử dụng sqrt từ thư viện math
    double x2 = (-b - sqrt(delta)) / (2 * a);  // Sử dụng sqrt từ thư viện math
    print("Phương trình có hai nghiệm phân biệt:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}

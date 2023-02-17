void main(List<String> args) {
  //Khai báo biến
  String name = "tinh";
  int age = 18;
  bool old = false;
  double sum = 2.2;

  name = "ngtinhs";
  age = 22;
//Dynamic chấp nhận mọi kiểu, và có thể thay thế ví dụ
  dynamic tuoi = 20;
  dynamic ten = "ngtinhs"; //Lúc này dynamic chuyển thành string

//Var chấp nhận mọi kiểu, nhưng không thể thay thế

  print(name);
  print(age);
  print(old);
  print(sum);
}

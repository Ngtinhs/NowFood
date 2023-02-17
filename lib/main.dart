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

  //Khai báo biến một tập các đối tượng
  List<String> namee = ['Duy', 'nam', 'long']; ////Ben trong list la kieu String
  print(namee);

  Map<String, String> obj = {
    "name": "name",
    "age": "age",
    "old": "old"
  }; //Key kiểu string và value kiểu string

  print(obj);

  //Khai báo hằng số
  const TIME = 1;
  final TIMEE = 1;
  print(TIME);
}

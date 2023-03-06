import 'dart:convert';
import 'package:app/model/product.dart';
import 'package:http/http.dart' as http;
// import 'package:convert/convert.dart';
import 'package:quiver/strings.dart';

class Utilities {

  String url = "http://192.168.0.100:3000/api/food";
  static List<Products> data = [];
  Future<List<Products>> getProducts() async {

    var res = await http.get(url);
    if (res.statusCode == 200) {
      var content = res.body;
      print(content.toString());
      var arr = json.decode(content)["food"] as List;

      return arr.map((e) => _fromJson(e)).toList();
    }
    return <Products>[];
  }

  Products _fromJson(Map<String, dynamic> item) {
    return Products(
      description: item["description"],
      title: item["title"],
      image: item["image"],
      price: item["price"]))
  }
static String validateEmail(String value) {
if (value.isEmpty){
return "Please enter";
} 
Pattern pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Please enter a valid Email';
    else
    return null;
  }


  static String validatePassword(String value) {
if (value.isEmpty)
{
  return "Please enter a valid";
} 
if (value.length<8) {
  return "Please enter a valid";
}
  }

  static String conformPassword(String value, String value2) {
    if (!equalsIgnoreCase(value, value2))
    return "Please enter a valid;
    }
    }
    
  


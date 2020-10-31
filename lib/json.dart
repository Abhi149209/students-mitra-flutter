import 'dart:convert';

import 'package:http/http.dart' as http;
class Networking {
  Networking({this.url});
  final String url;
  Future<dynamic> getData() async {
    http.Response response=await http.get(url);
    if (response.statusCode==200) {

      String data=response.body;
      var data23 = jsonDecode(data);
      print(data23);
      return data23;




    }else{
      print(response.statusCode);
    }
  }
}

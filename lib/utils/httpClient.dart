import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mindamigo/utils/errorPrinter.dart';

class HttpCall{

  String _URL;
  Map _dataToBeSent;
  String _contentType='application/json; charset=UTF-8';
  String _authToken;
  bool _isAuthRequired = true;
  bool _isHeaderEnabled=false;
  String get URL => _URL;

  set URL(String value) {
    _URL = value;
  }

  set setAuthToken(String authToken){
    this._authToken = authToken;
  }
  set setAuthRequired(bool authRequired){
    this._isAuthRequired = authRequired;
  }

  Map get dataToBeSent => _dataToBeSent;

  set dataToBeSent(Map value) {
    _dataToBeSent = value;
  }

  Future<dynamic> sendGetRequest() async {
    try {

      final http.Response response = await http.get(
          Uri.parse(this._URL),
          headers:this._isHeaderEnabled? <String, String>{
            'Content-Type': _contentType,
            'Authorization': this._isAuthRequired ? this._authToken : ""
          }: null);
           return {'statusCode': response.statusCode, 'responseBody': response.body};
    } catch (err, stackTrace) {
      print(err);

      //print(errorPrinter(err, stackTrace, 'BLOG URL '));
    }
  }


/*  Future<dynamic> sendPostRequest() async{
    try{
      final http.Response response = await http.post(
        "this._URL",
        headers: <String,String>{
          'Content-Type': _contentType,
          'Authorization': this._isAuthRequired ?this._authToken : ""
        },
        body: jsonEncode(this._dataToBeSent),
      );

      return{
        'statusCode':response.statusCode,
        'responseBody':response.body
      };

    }catch(e,stacktrace){
      print('POST Request Error on URL ${this._URL} Error :: ${e.toString()} ');
      print("=========================================================");
      print(' STACKTRACE :: ${stacktrace.toString()}');
    }
  }*/



}

void check() async{
  final http.Response response = await http.get(
      Uri.parse("http://localhost:3000/blog/blogs")
      );
  print("CHECK FUNCTION");
    print(response);

}


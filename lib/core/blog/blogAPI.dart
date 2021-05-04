import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mindamigo/constants/network.dart';
import 'package:mindamigo/utils/errorPrinter.dart';
import 'package:mindamigo/utils/httpClient.dart';


class BlogRepository{
  HttpCall _httpCall=new HttpCall();

  Future<Map> getBlogs() async{
    _httpCall.setAuthRequired = false;
    _httpCall.URL= NetworkInfo.networkInfo + ApiType.blog ;
    try{
      var data;
      await _httpCall.sendGetRequest().then((res) {
        data=res;
      });
      return data;
    }catch(err,stackTrace){
      print(httpErrorPrinter(_httpCall.URL.toString(), err,stackTrace,'Blog.getBlog'));
      return null;
    }
  }
}
import 'package:dio/dio.dart';
import 'package:flutter_application_p1/util/json.dart';
// import 'dart:developer';

Future <Object> testGet(String url) async{
  final dio= Dio();
  final response = await dio.get(url);
  // print(prettyJson(response.data));

 return response.data;
}


Future <Object> testPost(String url, Object paramData) async{
  final dio= Dio();
  final response = await dio.post(
    url,
    data:paramData,
    options:Options(
      // responseType:ResponseType.stream  ResponseType.bytes
      // baseUrl
      // connectTimeout
      // receiveTimeout
      // method

      headers:{
        'Content-Type': 'application/json',
        'User-Agent': 'user-agent',
        // 'Xx-User-Agent': ua,
        'Xx-User-Agent': 'xx-user-agent',
        // 'Authorization': auth[2],
        // 'Date': auth[1],
      }
    )
  );
  
  // print(response);
  return response.data;
}




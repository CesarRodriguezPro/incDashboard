import 'dart:convert';
import 'package:dio/dio.dart';
import '../database/database.dart';
import 'basic_url.dart';


Future<String> totalEmployeesInSite()async{
  var key = await getApiKey();
  var dio = Dio();
  String url = '$rootApi/dashboard/dashboard/';
  Response response = await dio.get(url,
    options: Options(
      headers: {'Authorization': 'TOKEN $key'},
    ),
  );
  if(response.statusCode == 200 ){
    String totalEmployees= json.decode(json.encode(response.data));
    return  totalEmployees;
  }
  else{
    return '';
  }
}
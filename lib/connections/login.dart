import 'dart:async';
import 'package:dashboard/connections/request_types.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../connections/share_functions.dart';
import '../database/database.dart';



Future<Response> authenticateUser(String username, String password) async{
  var response = await apiRequestWithPassword(username, password);
  if(response.statusCode == 200 ){
    Map valueStream = await jsonToDartFormat(response);
    String token = valueStream['token'].toString();
    saveApiKey(token);
    return response;
  }
  else{
    return response;
  }
}


Future loginToApi( name, password, context)async{
  try{
    Response response = await authenticateUser(name.text, password.text).timeout(const Duration(seconds: 5));
    return response;
  }
  on TimeoutException catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message!)
    ));
  }
}

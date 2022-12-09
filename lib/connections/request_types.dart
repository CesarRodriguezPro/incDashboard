// ignore_for_file: file_names, depend_on_referenced_packages

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import '../database/database.dart';
import './basic_url.dart';
import 'dart:async';
import 'dart:io';


Future<http.Response> getRequest(String urlExtension)async{

  var headers = {
    'Authorization': 'TOKEN ${await getApiKey()}'
  };

  var client = http.Client();
  var response = client.get(Uri.parse('$rootApi/$urlExtension'), headers: headers);
  return response;
}


Future<http.Response> postRequest({required String apiUrl, required Map<String,String> data})async{
  var headers = {
    'Authorization': 'TOKEN ${await getApiKey()}'
  };
  var client = http.Client();
  var response = client.post(
    Uri.parse('$rootApi/$apiUrl'),
    headers: headers,
    body: data,
  );
  return response;
}


Future<http.Response> postRequestDynamicData({required String apiUrl, required data})async{
  var headers = {
    'Authorization': 'TOKEN ${await getApiKey()}'
  };
  var client = http.Client();
  var response = client.post(
    Uri.parse('$rootApi/$apiUrl'),
    headers: headers,
    body:data,
  );
  return response;
}


Future<http.Response> apiRequestWithPassword(String username, String password)async{
  var data = {
    'username': username,
    'password': password
  };
  var client = http.Client();
  var response = client.post(
    Uri.parse('$rootApi/api-token-auth/'),
    body: data,
  );
  return response;
}

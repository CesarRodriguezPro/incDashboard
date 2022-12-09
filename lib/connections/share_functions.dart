import 'dart:convert';
import 'package:http/http.dart' as http;


Future jsonToDartFormat(http.Response response)async{
  String streamResponse = response.body;
  final valueStream = json.decode(streamResponse);
  return valueStream;
}
import 'dart:developer';

import 'package:json/model/post.dart';
import 'package:http/http.dart' as http;

class RemoteController {
  Future<List<Post>?> getPosts() async {
    try {
      var uri = Uri.parse('http://192.168.0.105:8080/');
      
      var response = await http.get(uri);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        var json = response.body;
        return postFromJson(json);
      }
    } catch (e) {}
  }
}

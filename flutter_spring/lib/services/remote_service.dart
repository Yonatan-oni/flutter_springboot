import 'dart:developer';

import 'package:json/model/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPosts() async {
    try {
      // var client = http.Client();
      // var response = await http.get(Uri.http('http://192.168.0.105:8080/'));
      // var uri = Uri.parse('192.168.0.105:8080/');

      // var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

      var response = await http.get(Uri.http('192.168.0.105:8080', ''));

      // var response = await http.get(uri);
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        var json = response.body;
        return postFromJson(json);
      }
    } catch (e) {}
  }
}

import 'package:flutter/material.dart';
import 'package:json/model/post.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text(post.title, style: const TextStyle(color: Colors.red),)),
        const SizedBox(height: 10,),
        Text(post.body),
        ],
    );
  }
}

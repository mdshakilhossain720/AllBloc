
import 'dart:convert';

import 'package:blocfullcourse/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostReporitity{
  Future<List<PostModel>> fetch () async {
    try{
      final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
       if(response.statusCode ==200){
         final body=json.encode(response.body) as List;
         return body.map((e){
           return PostModel(
             postId: e['postId'] as int,
             email: e["email"] as String,
             body: e["body"] as String,
           );

         }).toList();
       }
      
    }catch(e){
      
    }
  }
}
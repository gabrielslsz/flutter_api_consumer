import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

class PostService {
  static const String _url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => Post.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao buscar posts');
    }
  }
}

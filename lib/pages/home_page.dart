import 'package:flutter/material.dart';
import '../services/post_service.dart';
import '../models/post_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PostService service = PostService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts da API Pública')),
      body: FutureBuilder<List<Post>>(
        future: service.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Erro ao carregar dados'));
          }

          final posts = snapshot.data!;

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

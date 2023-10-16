import 'dart:convert';
import 'package:flutter/material.dart';
import '../model/user_class.dart';
import 'package:http/http.dart' as http;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<List<Post>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<Post> posts = data.map((post) => Post.fromJson(post)).toList();
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Rest API')),
        ),
        body: Center(
          child: FutureBuilder<List<Post>>(
            future: getPosts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                if (snapshot.hasData) {
                  final posts = snapshot.data;
                  return ListView.builder(
                    itemCount: posts!.length,
                    itemBuilder: (context, index) {
                      int postnumber = index + 1;
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('$postnumber'),
                        ),
                        title: Text(posts[index].title.toUpperCase()),
                        subtitle: Text(posts[index].body),
                      );
                    },
                  );
                }
              }
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}

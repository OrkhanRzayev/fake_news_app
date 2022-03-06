import 'package:fake_news_app/bloc/cubit.dart';
import 'package:fake_news_app/posts/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsView extends StatelessWidget {
  const PostsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 65, 64, 64),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 43, 42, 42),
          title: Text('Fake News'),
          centerTitle: true,
        ),
        body: BlocBuilder<PostsCubit, List<Post>>(
          builder: (context, state) {
            if (state.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                Post post = state[index];
                return Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.newspaper,
                    ),
                    title: Text(
                      post.title,
                      maxLines: 1,
                    ),
                    subtitle: Text(
                      post.body,
                      maxLines: 3,
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}

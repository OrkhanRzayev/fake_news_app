import 'package:fake_news_app/posts/post.dart';
import 'package:fake_news_app/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>> {

  final _data = Data()  ;
  PostsCubit() : super([]);
  void get posts async => emit(await _data.getPosts());
  
}
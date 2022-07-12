import 'package:flutter/cupertino.dart';
import 'package:pet_app/model/post.dart';
import 'package:pet_app/services/forum/forum_services.dart';

class ForumViewModel extends ChangeNotifier {
  ForumService forumService = ForumService();

  List<Post> posts = [];

  getPosts() async {
    posts = await forumService.getPosts();
    if (posts.isEmpty) return;
  }

  increaseLikes(id) async{
    Post post = posts.where((post) => post.id == id).first;
    int likes = post.likes!;
    likes++;
    posts.where((post) => post.id == id).first.likes = likes;
    await forumService.addLikes(post);
    notifyListeners();
  }

  addPost(String title,String description)async{
    Post post = Post(title: title, description: description, likes: 0);
    await forumService.addPost(post);
  }
}

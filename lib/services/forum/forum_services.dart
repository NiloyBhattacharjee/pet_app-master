import 'package:pet_app/model/post.dart';
import 'package:pet_app/services/rest.dart';

class ForumService extends Rest {
  List<Post> posts = [];
  getPosts() async {
    posts = [];
    final json = await Rest.get('posts');

    if (json == null) return;
    for (var post in json) {
      posts.add(Post.fromJson(post));
    }
    return posts;
  }

  addLikes(Post post)async{
    await Rest.patch('posts/${post.id}',data: post.toJson());
  }

  addPost(Post post) async => await Rest.post('posts',data: post.toJson());

}

import 'dart:ffi';

class Post {
  String? id;
  String? title;
  String? description;
  int? likes;

   Post({
    this.id,
    required this.title,
    required this.description,
    required this.likes,
  });
  Post.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    title = json['PostTitle']?.toString();
    description = json['posttDesc']?.toString();
    likes = json['likes']?.toInt();
  }

  Map<String, dynamic> toJson() => {
        'PostTitle': title,
        'posttDesc': description,
        'likes': likes,
      };
}

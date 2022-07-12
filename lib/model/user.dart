enum ActivityLevel {
  sedentary,
  lightlyactivity,
  moderateactivity,
  highactivity,
  extractive,
}

class User {
  dynamic id;
  String? fullname;
  String? username;
  String? password;

  List<dynamic>? favoritemeals;

  User({
    this.id,
    required this.fullname,
    required this.username,
    required this.password,
  });

  setFullname(String full) => fullname = full;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    fullname = json['fullname']?.toString();
    username = json['username']?.toString();
    password = json['password']?.toString();
  }
  Map<String, dynamic> toJson() => {
        'fullname': fullname,
        'username': username,
        'password': password,
      };
}

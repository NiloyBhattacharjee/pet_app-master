class User {
  dynamic id;
  String? petname;
  bool? vaxed;
  String? age;

  List<dynamic>? favoritemeals;

  User(
      {this.id, required this.petname, required this.vaxed, required this.age});

  setPetname(String full) => petname = full;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    petname = json['petname']?.toString();
    vaxed = json[true].toBool;
    age = json['age']?.toSrting();
  }
  Map<String, dynamic> toJson() =>
      {'petname': petname, 'vaxed': vaxed, 'age': age};
}

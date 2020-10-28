class UserModel {
  int id;
  String email;
  String role;

  UserModel({this.id, this.email, this.role});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["userId"] ?? 0,
      email: json["mail"] ?? 'No email',
      role: json["role"] ?? 'no role',
    );
  }

  static List<UserModel> fromJsonList(List<dynamic> jsonList) {
    List<UserModel> items = List<UserModel>();
    jsonList.forEach((element) {
      items.add(UserModel.fromJson(element));
    });
    return items;
  }
}

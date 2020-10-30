class RegisterStudentRequest {
  String name;
  String fullName;
  String mail;
  String password;
  String phone;
  String role;

  RegisterStudentRequest(
      {this.name,
      this.fullName,
      this.mail,
      this.password,
      this.phone,
      this.role});

  Map<String, dynamic> toJson() => {
        'name': name,
        'fullName': fullName,
        'mail': mail,
        'password': password,
        'phone': phone,
        'role': role,
      };
}

class UsersModel {
  String email;
  String password;

  UsersModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory UsersModel.fromMap(Map<String, dynamic> map) {
    return UsersModel(
      email: map['email'],
      password: map['password'],
    );
  }
}

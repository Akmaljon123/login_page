import 'dart:convert';

List<Register> registerFromJson(String str) => List<Register>.from(json.decode(str).map((x) => Register.fromJson(x)));

String registerToJson(List<Register> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Register {
  String name;
  String email;
  String password;

  Register({
    required this.name,
    required this.email,
    required this.password,
  });

  // Register copyWith({
  //   String? email,
  //   String? password,
  // }) =>
  //     Register(
  //       name: name ?? this.name,
  //       email: email ?? this.email,
  //       password: password ?? this.password,
  //     );

  factory Register.fromJson(Map<String, dynamic> json) => Register(
    name: json["name"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
  };
}

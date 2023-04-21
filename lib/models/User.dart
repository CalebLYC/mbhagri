class User {
  int? id;
  String name;
  String email;
  String? password;
  String role;

  User({
    this.id,
    required this.name,
    required this.email,
    this.password,
    required this.role,
  });
}

class User {
  final String? id;
  final String userName;
  final String email;
  final String phoneNumber;
  final String? avatar;

  User({
    this.id,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      userName: json['userName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      avatar: json['avatar'],
    );
  }
}

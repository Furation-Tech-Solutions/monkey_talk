import 'package:monkey_talk/domain/auth/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required String uid,
    final String? email,
    String? firstName,
    String? lastName,
  }) : super(
          uid: uid,
          email: email,
          firstName: firstName,
          lastName: lastName,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );
  }
}

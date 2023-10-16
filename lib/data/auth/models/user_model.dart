import 'package:monkey_talk/domain/auth/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required String uid,
    final String? email,
    String? displayName,
  }) : super(
          uid: uid,
          email: email,
          displayName: displayName,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
    );
  }
}

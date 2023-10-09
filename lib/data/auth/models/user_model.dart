import 'package:monkey_talk/domain/auth/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({required String uid, String? email, String? firstName})
      : super(
          uid: uid,
          email: email,
          firstName: firstName,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(uid: json['uid']);
  }
}

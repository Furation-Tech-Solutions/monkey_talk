import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class UserEntity extends Equatable {
  const UserEntity({required this.uid, this.email, this.firstName});
  final String uid;
  final String? email;
  final String? firstName;

  @override
  List<Object?> get props => <Object?>[
        uid,
        email,
        firstName,
      ];
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'core.freezed.dart';
part "core.g.dart";

@freezed
class Core with _$Core {
  const Core._();
  const factory Core({
    @Default([]) List<BasicUser> users,
  }) = _Core;

  factory Core.empty() => const Core(users: []);
}

// curtom user class

@freezed
class BasicUser with _$BasicUser {
  const BasicUser._();
  const factory BasicUser({
    required String uid,
    required String name,
    required String email,
    required bool trainer,
  }) = _BasicUser;

  // from json to json
  factory BasicUser.fromJson(Map<String, dynamic> json) =>
      _$BasicUserFromJson(json);
}

import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/auth/auth.dart';
import 'package:trainer_promoter/src/domain/core/core.dart';
import 'package:trainer_promoter/src/infrastructure/services/auth/auth_service.dart';

class CoreNotifier extends StateNotifier<Core> {
  CoreNotifier(this.ref) : super(Core.empty()) {
    print("core init");
    if (mounted) {
      coreInit();
    }
  }
  final Ref ref;

  void coreInit() async {
    //check if logged in
    if (ref.read(authControllerProvider) == LoginState.authenticated()) {
      //get all users
      var users = await ref.read(authServiceProvider).getAllUsers();
      state = state.copyWith(users: users);
    }
  }
}

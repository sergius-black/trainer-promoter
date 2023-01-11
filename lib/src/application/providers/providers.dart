import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trainer_promoter/src/application/state_notifiers/auth_notifier.dart';
import 'package:trainer_promoter/src/application/state_notifiers/core_notifier.dart';
import 'package:trainer_promoter/src/application/state_notifiers/player_filter_notifier.dart';
import 'package:trainer_promoter/src/domain/auth/auth.dart';
import 'package:trainer_promoter/src/domain/core/core.dart';
import 'package:trainer_promoter/src/domain/player_filter/player_filter.dart';
import 'package:trainer_promoter/src/infrastructure/services/auth/auth_service.dart';

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

// google login provider
final googleAuthProvider = Provider((ref) => GoogleAuthProvider());
//google sign in provider
final googleSignInProvider = Provider((ref) => GoogleSignIn());

final firestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final functionsProvider =
    Provider<FirebaseFunctions>((ref) => FirebaseFunctions.instance);

//Auth Providers
final authControllerProvider =
    StateNotifierProvider<AuthController, LoginState>(
        (ref) => AuthController(ref));

final authServiceProvider = Provider((ref) => AuthService(ref));

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.read(firebaseAuthProvider).authStateChanges();
});

final coreProvider = StateNotifierProvider<CoreNotifier, Core>(
  (ref) {
    return ref.watch(authStateProvider).when(
          data: (user) => CoreNotifier(ref),
          error: (error, stackTrace) {
            print(error);
            print(stackTrace);

            return CoreNotifier(ref);
          },
          loading: () => CoreNotifier(ref),
        );
  },
);

final playerFilterProvider =
    StateNotifierProvider<PlayerFilterNotifier, PlayerFilter>(
  (ref) => PlayerFilterNotifier(ref),
);

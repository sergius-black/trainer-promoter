import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/core/core.dart';

class AuthService {
  AuthService(this.ref) {
    auth = ref.read(firebaseAuthProvider);
    googleSignIn = ref.read(googleSignInProvider);
    functions = ref.read(functionsProvider);
  }
  final Ref ref;

  late FirebaseAuth auth;
  late GoogleSignIn googleSignIn;

  late FirebaseFunctions functions;

  Stream<User?> get authStateChange => auth.authStateChanges();

  String? get uid {
    return auth.currentUser?.uid;
  }

  //login with email and password
  Future<void> login(String email, String password) async {
    try {
      UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      //get users custom claims
      IdTokenResult tokenResult = await user.user!.getIdTokenResult();
      if (tokenResult.claims?['godmode'] != true) {
        logout();
      }
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  Future<void> logout() async {
    try {
      print("logout");
      await googleSignIn.disconnect();
      await auth.signOut();
    } catch (err) {
      print(err);
    }
  }

  //get all users

  Future<List<BasicUser>> getAllUsers() async {
    try {
      HttpsCallable callable = functions.httpsCallable('listAllUsers');
      final response = await callable();
      print(response.data);
      List<BasicUser> users = response.data["users"].map<BasicUser>((user) {
        print(user);
        var userMap = Map<String, dynamic>.from(user);
        return BasicUser.fromJson(userMap);
      }).toList();

      return users;
    } catch (err) {
      print(err);
      return [];
    }
  }

  // promote trainer
  Future<void> promote(String uid) {
    try {
      HttpsCallable callable = functions.httpsCallable('promoteTrainer');
      final response = callable({"uid": uid});
      return response;
    } catch (err) {
      print(err);
      return Future.error(err);
    }
  }

  // demote trainer
  Future<void> demote(String uid) {
    try {
      HttpsCallable callable = functions.httpsCallable('demoteTrainer');
      final response = callable({"uid": uid});
      return response;
    } catch (err) {
      print(err);
      return Future.error(err);
    }
  }
}

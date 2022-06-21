import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  User? user;
  String? authError;

  void checkLogin() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  Future<String?> signInWithEmail(String email, String password) async {
    try {
      final userAuthentication = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      user = userAuthentication.user;
      print("logged in: " + user!.email.toString());
    } on FirebaseAuthException catch (error) {
      print("Error " + error.code);
      authError = error.code;
    }

    return authError;
  }
}

import 'package:firebase_auth/firebase_auth.dart';

class Register {
    void registerWithPhoneNumber(String phoneNumber) {
            await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) {},
    verificationFailed: (FirebaseAuthException e) {},
    codeSent: (String verificationId, int? resendToken) {},
    codeAutoRetrievalTimeout: (String verificationId) {},
);
    }
}
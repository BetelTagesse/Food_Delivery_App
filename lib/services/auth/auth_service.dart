import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

User? getCurrentUser(){
  return _firebaseAuth.currentUser;
}

Future<UserCredential> signInWithEmailPassword(String email, password) async{
  try{
    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
  on FirebaseAuthException
}

}

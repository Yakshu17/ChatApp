import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod{
  final FirebaseAuth _auth =FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailPassword(String email, password)async{
    //Signin
    try{
      UserCredential userCredential =await _auth.signInWithEmailAndPassword(
          email: email,
          password: password);
      return userCredential;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
    //signup

  }


}
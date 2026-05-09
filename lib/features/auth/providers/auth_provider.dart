import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final firebaseauthprovider=Provider((ref){
  return FirebaseAuth.instance;
});
class AuthProvider extends  StateNotifier<User?> {
final FirebaseAuth auth;
AuthProvider( this.auth):super(auth.currentUser){
auth.authStateChanges().listen((user) {
state=user;
},);
}

Future<void>signIn(String email , String password)async{
try {
  await auth.signInWithEmailAndPassword(email: email, password: password);

}
on FirebaseAuthException catch(e){
  throw Exception(e.message ?? 'Signin Failed');
}
}

Future<void>signUp(String email , String password)async{
try {
  await auth.createUserWithEmailAndPassword(email: email, password: password);


}
on FirebaseAuthException catch(e){
  throw Exception(e.message ?? 'Signin Failed');
}
}
Future<void>signOut()async {
  await auth.signOut();
}



}
final authprovider=StateNotifierProvider<AuthProvider,User?>((ref){
  final Auth=ref.watch(firebaseauthprovider);
  return AuthProvider(Auth);
});

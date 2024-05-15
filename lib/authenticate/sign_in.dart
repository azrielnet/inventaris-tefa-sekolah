import 'package:inventaris_tefa_sekolah/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: const Text('sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if(result == null){
            } else {
            }
          },
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
RaisedButton({required Text child, required Future<Null> Function() onPressed}) {
}
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_appauth/flutter_appauth.dart';
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:inventaris_tefa_sekolah/wrapper.dart';
import 'package:inventaris_tefa_sekolah/login_page.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}


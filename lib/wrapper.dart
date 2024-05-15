import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:inventaris_tefa_sekolah/home_page.dart';
import 'package:inventaris_tefa_sekolah/authenticate/authenticate.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    
    // return either the Home or Authenticate widget
    return const Authenticate();
    
  }
}
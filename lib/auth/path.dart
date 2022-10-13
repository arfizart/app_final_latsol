import 'package:app_final_latsol/views/login_page.dart';

import '../views/main/latihan_soal/home_page.dart';

import 'auth.dart';
import '../views/main_page.dart';
import '../views/login_form_page.dart';
import 'package:flutter/material.dart';

class PathTree extends StatefulWidget {
  const PathTree({super.key});

  @override
  State<PathTree> createState() => _PathTreeState();
}

class _PathTreeState extends State<PathTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return const MainPage();
        } else {
          return const LoginPage();
        }
      }),
    );
  }
}

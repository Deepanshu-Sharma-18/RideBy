import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lift/Pages/Auth/User/loginscreen.dart';
import 'package:lift/Pages/Main/mainpage.dart';

class MiddleWare extends StatefulWidget {
  const MiddleWare({super.key});

  @override
  State<MiddleWare> createState() => _MiddleWareState();
}

class _MiddleWareState extends State<MiddleWare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const MainScreen();
            } else {
              return const UserAuth();
            }
          }),
    );
  }
}

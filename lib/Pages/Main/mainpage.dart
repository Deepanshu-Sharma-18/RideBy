import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => FirebaseAuth.instance.signOut(),
        child: Container(
          padding: EdgeInsets.all(50),
          child: Text('MainPage'),
        ),
      ),
    );
  }
}

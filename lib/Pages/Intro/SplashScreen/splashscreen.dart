import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lift/Constants/Colors.dart';
import 'package:lift/Pages/Auth/User/loginscreen.dart';
import 'package:lift/Pages/Auth/User/middleware.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      child: AnimatedSplashScreen(
        backgroundColor: Rang.black,
        nextScreen: MiddleWare(),
        splashTransition: SplashTransition.scaleTransition,
        splash: Center(
          child: Text('RideBy',
              style: GoogleFonts.poppins(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}

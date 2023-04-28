import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lift/Pages/Auth/User/signupscreen.dart';

import 'package:lift/Pages/Intro/GettingStarted/gettingstarted.dart';
import 'package:lift/Pages/Auth/User/loginscreen.dart';
import 'package:lift/Pages/Intro/SplashScreen/splashscreen.dart';

import 'Constants/Colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Rang.backgroundWhite,
    colorScheme: ColorScheme.light(
      primary: Rang.hotPink,
      onPrimary: Rang.hotPink,
      primaryContainer: Colors.white38,
      secondary: Colors.red,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Rang.black,
    colorScheme: ColorScheme.dark(
        primary: Rang.blue,
        secondary: Rang.grey,
        onSecondary: Rang.textgrey,
        onPrimary: Rang.backgroundWhite),
  );

  var isDarkMode = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 866),
      splitScreenMode: false,
      builder: ((context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RideBy',
          theme: isDarkMode ? darkTheme : lightTheme,
          home: SplashScreen(),
        );
      }),
      child: UserAuth(),
    );
  }
}

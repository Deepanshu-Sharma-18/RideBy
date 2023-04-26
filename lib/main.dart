import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lift/Auth/User/usersauth.dart';
import 'package:lift/Intro/GettingStarted/gettingstarted.dart';

import 'Constants/Colors.dart';

void main() {
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
        primary: Rang.spotifyGreen,
        secondary: Rang.spotifyGreen,
        onSurface: Rang.spotifyGreen,
        onPrimary: Rang.backgroundWhite),
  );

  var isDarkMode = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      splitScreenMode: false,
      builder: ((context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RideBy',
          theme: isDarkMode ? darkTheme : lightTheme,
          home: child,
        );
      }),
      child: const UserAuth(),
    );
  }
}

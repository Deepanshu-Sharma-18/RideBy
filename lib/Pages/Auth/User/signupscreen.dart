import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lift/widgets/textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var namecontroller = TextEditingController();
  var numcontroller = TextEditingController();
  var otpcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: InkWell(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          padding: EdgeInsets.all(25.sp),
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Create new account',
                  style: GoogleFonts.montserrat(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Please fill in the form to continue',
                  style: GoogleFonts.montserrat(
                    fontSize: 15.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 65.h,
                ),
                TextFieldApp(
                    textEditingController: namecontroller,
                    hintText: '',
                    keyboardtype: TextInputType.text,
                    maxlines: 1,
                    label: 'Name'),
                SizedBox(
                  height: 15.h,
                ),
                TextFieldApp(
                    textEditingController: numcontroller,
                    hintText: '',
                    keyboardtype: TextInputType.number,
                    maxlines: 1,
                    label: 'Phone'),
                SizedBox(
                  height: 15.h,
                ),
                TextFieldApp(
                    textEditingController: otpcontroller,
                    hintText: '',
                    keyboardtype: TextInputType.number,
                    maxlines: 1,
                    label: 'OTP'),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Get OTP',
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65.h,
                ),
                InkWell(
                  child: Container(
                    width: double.maxFinite,
                    height: 65.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.h),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.alegreya(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an accont?',
                      style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

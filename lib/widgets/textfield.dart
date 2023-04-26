import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lift/Constants/Colors.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.keyboardtype,
      required this.maxlines,
      required this.label});
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType keyboardtype;
  final int maxlines;
  final String label;

  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(25.h)),
      child: TextField(
        controller: widget.textEditingController,
        keyboardType: widget.keyboardtype,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onPrimary),
        maxLines: widget.maxlines,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(7.h),
          focusColor: Theme.of(context).colorScheme.onPrimary,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintStyle: TextStyle(
              fontSize: 17.sp,
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.4)),
          hintText: widget.hintText,
          enabled: true,
          labelStyle: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onSecondary),
          label: Text(widget.label),
        ),
      ),
    );
  }
}

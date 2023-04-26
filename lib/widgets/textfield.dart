import 'package:flutter/material.dart';
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
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: widget.textEditingController,
        keyboardType: widget.keyboardtype,
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.w500, color: Rang.black),
        maxLines: widget.maxlines,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          focusColor: Theme.of(context).colorScheme.onPrimary,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 0.4)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 0.8)),
          hintStyle:
              TextStyle(fontSize: 15, color: Rang.black.withOpacity(0.4)),
          hintText: widget.hintText,
          enabled: true,
          labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary),
          label: Text(widget.label),
        ),
      ),
    );
  }
}

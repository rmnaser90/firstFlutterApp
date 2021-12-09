import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final String? hint;
  final bool? isSecure;
  const MyInput({Key? key, this.hint, this.isSecure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white),
      child: TextField(
        obscureText: isSecure == null ? false : true,
        decoration: InputDecoration(hintText: hint, border: InputBorder.none),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String title;
  // ignore: non_constant_identifier_names
  final double Height;
  // ignore: non_constant_identifier_names
  final double Width;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  SignInButton(
      {Key? key,
      required this.title,
      // ignore: non_constant_identifier_names
      required this.Height,
      // ignore: non_constant_identifier_names
      required this.Width,
      //this.colors = Colors.yellow,
      this.colors = Colors.blue,
      // ignore: non_constant_identifier_names
      required this.Onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: Onpress,
        child: Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 1.3),
            // color: colors,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                fontFamily: 'Mirai Futura-Demo',
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

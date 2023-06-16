import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/colors.dart';

class MySearch extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscuretext;
  final Widget1;

  const MySearch({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext,
    required this.Widget1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          controller: controller,
          obscureText: obscuretext,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff232327)),
            ),
            prefixIcon: Widget1,
            fillColor: Color(0xff232327),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
          ),
        ),
      ),
    );
  }
}

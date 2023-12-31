import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscuretext;
  // final Widget1;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext,
    // required this.Widget1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF0F0F0)),
            ),
            // prefixIcon: Widget1,
            fillColor: const Color.fromRGBO(248, 246, 246, 1),
            filled: true,
            hintText: hintText,
            hintStyle:
                GoogleFonts.poppins(fontSize: 13, color: Colors.grey[500])),
      ),
    );
  }
}

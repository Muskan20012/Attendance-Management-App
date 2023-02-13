import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({Key? key, required this.text, required this.fun})
      : super(key: key);

  final String text;
  final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Text(
        text,
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
            color: Color(0xff6E3CBC),
          ),
        ),
      ),
    );
  }
}

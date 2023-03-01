import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TealContainer extends StatelessWidget {
  final String text;
  const TealContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(7),
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontSize: 15.0,
        ),
      ),
    );
  }
}

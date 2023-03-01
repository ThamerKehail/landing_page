import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsMobileWidget extends StatelessWidget {
  final String text;
  final String route;
  const TabsMobileWidget({Key? key, required this.text, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

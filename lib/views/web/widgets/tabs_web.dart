import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/view_model/web_view_model.dart';
import 'package:provider/provider.dart';

class TabsWeb extends StatefulWidget {
  final String text;
  const TabsWeb({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        print("emter");
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        print("Exit");
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.openSans(
                shadows: [
                  const Shadow(color: Colors.black, offset: Offset(0, -8))
                ],
                color: Colors.transparent,
                fontSize: 25.0,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.openSans(color: Colors.black, fontSize: 23),
        child: Text(
          widget.text,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  final String label;
  final String hint;
  final double width;
  final int maxLine;
  const TextForm(
      {Key? key,
      required this.label,
      required this.hint,
      required this.width,
      required this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: width,
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                ],
                maxLines: maxLine,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.tealAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: hint),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

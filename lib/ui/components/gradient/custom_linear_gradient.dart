import 'package:flutter/material.dart';

class CustomLinearGradient extends StatelessWidget {
  final List<Color> colors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const CustomLinearGradient(
      {super.key,
      required this.colors,
      required this.begin,
      required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
      )),
    );
  }
}

import 'package:flutter/material.dart';

class Hat extends StatelessWidget {
  const Hat({Key? key}) : super(key: key);

  static const logoWidth = 86.0;
  get logoHeight => logoWidth / 240 * 61;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage("logo.png"),
              fit: BoxFit.fitWidth,
              width: logoWidth,
            ),
          ),
          Positioned(
            left: 0,
            child: _buildLine(false, context),
          ),
          Positioned(
            right: 0,
            child: _buildLine(true, context),
          ),
        ],
      ),
    );
  }

  Widget _buildLine(bool right, BuildContext context) {
    const lineColor = Color(0xFF484848);
    var lineSize =
        (MediaQuery.of(context).size.width - 32 - logoWidth - 16) / 2;
    var colors = [
      Colors.transparent,
      lineColor,
    ];

    if (right) {
      colors = colors.reversed.toList();
    }
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 1,
      width: lineSize,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
        ),
      ),
    );
  }
}

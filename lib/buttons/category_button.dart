import 'package:ai_lawyer_gosomi_flutter/theme/theme_colors.dart';
import 'package:flutter/material.dart';

Widget categoryButton(String value) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child: Container(
      height: 39,
      color: colorMainScreen,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 9),
        child: Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
        ),
      ),
    ),
  );
}

Widget categoryButtonDisabled(String value) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child: Container(
      height: 39,
      color: colorButtonNotSelectedBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 9),
        child: Text(
          value,
          style: const TextStyle(
            color: colorButtonNotSelectedFont,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
        ),
      ),
    ),
  );
}

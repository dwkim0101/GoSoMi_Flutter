import 'package:ai_lawyer_gosomi_flutter/theme/theme_colors.dart';
import 'package:flutter/material.dart';

Widget detailCategoryButton(String value) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: Container(
      height: 44,
      width: 172,
      color: colorPointColor,
      child: Center(
        child: Text(
          value,
          style: const TextStyle(
            color: colorMainScreen,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.3,
          ),
        ),
      ),
    ),
  );
}

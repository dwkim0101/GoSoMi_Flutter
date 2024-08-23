import 'package:ai_lawyer_gosomi_flutter/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget infoCard(String title, String detail) {
  return Card(
    color: Colors.white,
    elevation: 0.3,
    child: SizedBox(
      height: 172,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              style: const TextStyle(
                color: colorMainScreen,
                overflow: TextOverflow.ellipsis,
                fontSize: 20,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.3,
              ),
            ),
            const Gap(20),
            Text(
              detail,
              maxLines: 4,
              style: const TextStyle(
                color: colorButtonNotSelectedFont,
                height: 1.3,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                letterSpacing: -0.3,
              ),
            ),
            const Gap(9),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "전체 글 보기 ",
                  style: TextStyle(
                    color: colorDetailInfo,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    letterSpacing: -0.3,
                  ),
                ),
                // Gap(2),
                Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: colorDetailInfo,
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

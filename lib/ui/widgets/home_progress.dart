


import 'package:flutter/material.dart';

import '../../shared/methods.dart';
import '../../shared/theme.dart';

Container buildProgress() {
  return Container(
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: whiteColor,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Level 1',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            const Spacer(),
            Text(
              '50%',
              style: greenTextStyle.copyWith(fontWeight: semiBold),
            ),
            Text(
              formatCurrency(50000000),
            )
          ],
        ),
        const SizedBox(
          height: 11,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: LinearProgressIndicator(
            value: 0.72,
            minHeight: 5,
            backgroundColor: lightBackgroundColor,
            valueColor: AlwaysStoppedAnimation(greenColor),
          ),
        )
      ],
    ),
  );
}
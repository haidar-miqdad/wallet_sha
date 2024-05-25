import 'package:flutter/material.dart';
import '../../shared/methods.dart';
import '../../shared/theme.dart';

Container card() {
  return Container(
    width: double.infinity,
    height: 220,
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          image: AssetImage(
            'assets/img_bg_card.png',
          ),
          fit: BoxFit.cover,
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Haidar Miqdad',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        const SizedBox(
          height: 26,
        ),
        Text(
          '**** **** **** 1234',
          style: whiteTextStyle.copyWith(
              fontSize: 18, fontWeight: medium, letterSpacing: 6),
        ),
        const SizedBox(
          height: 26,
        ),
        Text(
          'Balance',
          style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
        ),
        Text(
          formatCurrency(50000000),
          style: whiteTextStyle.copyWith(fontSize: 25, fontWeight: semiBold),
        ),
      ],
    ),
  );
}

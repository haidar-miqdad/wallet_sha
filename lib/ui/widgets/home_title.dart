import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomeTitle {
  String title;

  HomeTitle({required this.title});
}

Widget buildHomeTitle(HomeTitle title) {
  return Text(
    title.title,
    style: blackTextStyle.copyWith(
      fontSize: 16,
      fontWeight: semiBold,
    ),
  );
}


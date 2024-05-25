
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ProfileMenuItem {
  String imageUrl;
  String title;
  Function? onTap;

  ProfileMenuItem({required this.imageUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 24,
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}




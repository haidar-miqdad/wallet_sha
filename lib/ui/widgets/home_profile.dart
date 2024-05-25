
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

Widget buildProfile(BuildContext context) {
  var blueChecklist = const Color(0xff4D77FF);
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Haidar yg itu tea',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/my-profile');
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img_profile.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: blueChecklist,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
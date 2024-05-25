import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'home_title.dart';

class DoSomething extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;

  const DoSomething(
      {super.key, required this.imageUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 26,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: medium),
          )
        ],
      ),
    );
  }
}

Widget buildSomething(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 14,
      ),
      buildHomeTitle(HomeTitle(title: 'Do Something')),
      const SizedBox(height: 14),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DoSomething(
              imageUrl: 'assets/ic_topup.png',
              title: 'Top Up',
              onTap: () {
                Navigator.pushNamed(context, '/top-up-page');
              }),
          DoSomething(
              imageUrl: 'assets/ic_send.png', title: 'Send ', onTap: () {}),
          DoSomething(
              imageUrl: 'assets/ic_withdraw.png',
              title: 'With Draw',
              onTap: () {}),
          DoSomething(
              imageUrl: 'assets/ic_more.png', title: 'More', onTap: () {}),
        ],
      )
    ],
  );
}

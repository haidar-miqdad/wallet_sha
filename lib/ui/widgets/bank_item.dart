import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class BankItem extends StatelessWidget{
  String name;
  String imageUrl;
  String time;

  BankItem({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
              color: blueColor,
              width: 2
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/img_bank_bca.png',
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'BANK BCA',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),

              Text(
                '50 mins',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  color: greyColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}




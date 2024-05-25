import 'package:flutter/material.dart';
import '../../shared/methods.dart';
import '../../shared/theme.dart';
import 'home_title.dart';

class LastTransaction extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? day;
  final String? price;
  final String? symbol;
  final VoidCallback? onTap;

  const LastTransaction(
      {super.key,
      required this.imageUrl,
      required this.title,
      this.day,
      this.price,
      this.symbol,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 48,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
                Text(
                  day!,
                  style: greyTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            price == null ? '' : '$symbol $price',
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
          )
        ],
      ),
    );
  }
}


Column buildLastTransaction() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 14,
      ),
      buildHomeTitle(HomeTitle(title: 'Last Transaction')),
      const SizedBox(
        height: 14,
      ),
      LastTransaction(
          imageUrl: 'assets/ic_transaction_cat1.png',
          title: 'Top Up',
          day: 'Yesterday',
          price: formatCurrency(450000),
          symbol: '+',
          onTap: null),
      LastTransaction(
          imageUrl: 'assets/ic_transaction_cat2.png',
          title: 'Top Up',
          day: 'Yesterday',
          price: formatCurrency(450000),
          symbol: '-',
          onTap: null),
      LastTransaction(
          imageUrl: 'assets/ic_transaction_cat3.png',
          title: 'Top Up',
          day: 'Yesterday',
          price: formatCurrency(450000),
          symbol: '+',
          onTap: null),
      LastTransaction(
          imageUrl: 'assets/ic_transaction_cat5.png',
          title: 'Top Up',
          day: 'Yesterday',
          price: formatCurrency(450000),
          symbol: '+',
          onTap: null),
    ],
  );
}

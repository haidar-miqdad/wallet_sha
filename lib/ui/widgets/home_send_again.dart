import 'package:flutter/material.dart';
import '../../models/customers_model.dart';
import '../../shared/theme.dart';
import 'home_title.dart';


Column buildHistory() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildHomeTitle(HomeTitle(title: 'Send Again')),
      const SizedBox(height: 14,),
      SizedBox(
        height: 130,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => customer(customers[index]),
            separatorBuilder: (context, index) => const SizedBox(width: 17,),
            itemCount: customers.length),
      )
    ],
  );
}

Container customer(CustomerModel customerModel) {
  return Container(
    width: 100,
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
            color: const Color(0xfff1e5e5).withOpacity(.22), width: 2)),
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/${customerModel.image}', width: 45, height: 45,),
            const SizedBox(height: 13,),
            Text(
              customerModel.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ],
        )),
  );
}
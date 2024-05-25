import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';


class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58.0),
          child: Column(
            children: [
              Text(
                'PIN', style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold),),
              const SizedBox(height: 72,),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '••••••••',
                    hintStyle: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

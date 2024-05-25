import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';
import 'package:wallet_sha/ui/widgets/home_last_transaction.dart';
import 'package:wallet_sha/ui/widgets/home_friendly_tips.dart';
import '../../shared/methods.dart';
import '../widgets/home_do_something.dart';
import '../widgets/home_card.dart';
import '../widgets/home_send_again.dart';
import '../widgets/home_profile.dart';
import '../widgets/home_progress.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: whiteColor,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            // fontWeight: medium,
          ),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/ic_overview.png', width: 20, color: blueColor,),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/ic_history.png', width: 20),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/ic_statistic.png', width: 20,),
                label: 'Statistic'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/ic_reward.png', width: 20),
                label: 'reward'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Image.asset('assets/ic_plus_circle.png', width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(
              height: 25,
            ),
            buildProfile(context),
            const SizedBox(
              height: 25,
            ),
            card(),
            const SizedBox(
              height: 25,
            ),
            buildProgress(),
            const SizedBox(
              height: 25,
            ),
            buildSomething(context),
            const SizedBox(
              height: 25,
            ),
            buildLastTransaction(),
            const SizedBox(
              height: 25,
            ),
            buildHistory(),
            const SizedBox(
              height: 25,
            ),
            buildHomeTips(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

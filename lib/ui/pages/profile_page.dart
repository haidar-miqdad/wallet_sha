import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';
import '../widgets/Profile_menu_item.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  get blueChecklist => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children:  [
          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
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
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: blueChecklist,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Text('Haidar Miqdad',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                 ),
                ),
                const SizedBox(height: 40,),
                // ProfileMenuItem(imageUrl: 'assets/ic_edit_profile.png', title: 'Edit Profile',),
              ],
            ),
          )
        ],
      ),
    );
  }
}


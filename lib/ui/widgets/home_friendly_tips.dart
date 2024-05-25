import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wallet_sha/shared/methods.dart';
import '../../shared/theme.dart';
import 'home_title.dart';

class HomeTips extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTips({super.key, required this.imageUrl, required this.title, required this.url});

  void errorLaunch() {
    const AlertDialog(
        icon: Icon(Icons.warning), content: Text("Url is not found"));
  }

  @override
  Widget build(BuildContext context) {
    Uri uri = Uri.parse(url);
    return  InkWell(
      onTap: () async {
        // showDefaultSnackbar(context, url);
        showCustomSnackbar(context, url);
        if (!await launchUrl(uri)) {
          throw Exception('couldn\'t launch $url');
        }
      },
      child: Container(
        width: 170,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                imageUrl,
                height: 110,
                width: 170,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildHomeTips() {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHomeTitle(HomeTitle(title: 'Friendly Tips')),
        const SizedBox(height: 14,),
        const Wrap(
          spacing: 17,
          runSpacing: 18,
          children: [
            HomeTips(imageUrl: 'assets/img_tips1.png', title: 'Benefit when you use WSH card,', url: 'https://www.youtube.comm/',),
            HomeTips(imageUrl: 'assets/img_tips4.png', title: 'Spot the good piece of finance model', url: 'https://www.youtube.com/',),
            HomeTips(imageUrl: 'assets/img_tips3.png', title: 'Great hack to get better advices', url: 'https://www.youtube.com/',),
            HomeTips(imageUrl: 'assets/img_tips2.png', title: 'Save more penny on buy this instead', url: 'abc',),],
        )
      ],
    ),
  );
}

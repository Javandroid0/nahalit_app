import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// صفحه آیکون های شیکه اجتماعی
class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    // تعریف متغیر لینک برای لیست آیکون های شبکه اجتماعی
    final urls = [
      'https://www.youtube.com/sigma',
      'https://telegram.me/hamkarwp',
      'https://www.facebook.com/sigma',
      'https://twitter.com/sigma',
      'https://instagram.com/sigma',
    ];

    // تعریف متغیر برای آیکون ها
    final icons = [
      FontAwesomeIcons.youtube,
      FontAwesomeIcons.telegram,
      FontAwesomeIcons.facebook,
      FontAwesomeIcons.xTwitter,
      FontAwesomeIcons.instagram,
    ];

    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: icons
            .asMap()
            .entries
            .map(
              (entry) => IconButton(
                onPressed: () {
                  launchUrl(Uri.parse(urls[entry.key]));
                },
                icon: FaIcon(
                  entry.value,
                  color: Colors.white,
                ),
              ),
            )
            .toList(), // تبدیل map به list
      ),
    );
  }
}

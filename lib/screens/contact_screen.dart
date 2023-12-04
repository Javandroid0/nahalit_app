import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nahal_it/screens/appbar_screen.dart';
import 'package:nahal_it/styles/styles.dart';
// import 'package:side_menu_app/screens/appbar_screen.dart';
// import 'package:side_menu_app/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key}) : super(key: key);

  final List<String> urls = [
    'https://instagram.com/sigma',
    'https://www.youtube.com/sigma',
    'https://telegram.me/hamkarwp',
    'https://www.aparat.com/nahal_it',
  ];

  final List<IconData> icons = [
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.youtube,
    FontAwesomeIcons.telegram,
    FontAwesomeIcons.video,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarScreen(
        title: 'تماس با ما',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              color: const Color.fromARGB(255, 197, 255, 182),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'تماس با نهال آی تی',
                        style: bodyMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'کاربر گرامی، لطفاً در صورت وجود هرگونه سوال یا ابهامی، پیشنهاد و یا هرگونه پیامی از بخش پشتیبانی سایت اقدام نمایید . پشتیبانان و تیم ما هر لحظه از شبانه روز آماده پاسخگویی به شما کاربران نهال آیتی می باشند .',
                        style: bodySmaller,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'نهال آی تی در شبکه های اجتماعی',
                        style: textMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'با عضویت در شبکه های اجتماعی نهال آیتی از آخرین تخفیف ها ، جشنواره ها و اطلاعیه های فروشگاه با خبر خواهید شد.',
                        style: bodySmaller,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
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
                                  color: Colors.green,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'تماس با نهال آی تی',
                        style: bodyMedium,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        '021-88867940',
                        style: bodySmall,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '09927674217',
                        style: bodySmall,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'admin@nahalit.com',
                        style: bodySmall,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'دفتر مرکزی : تهران - میدان فردوسی - خیابان ایرانشهر - بین سمیه و طالقانی - مجتمع تجاری میلاد - طبقه ۵ - واحد 9',
                        style: bodySmaller1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nahal_it/screens/signin_screen.dart';
import 'package:nahal_it/styles/styles.dart';
// import 'package:side_menu_app/screens/signin_screen.dart';
// import 'package:side_menu_app/styles/styles.dart';

// بخش پروفایل کاربر در منوهای اپ بار
class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ایجاد دایره ی پروفایل تصویری کاربر
        CircleAvatar(
          backgroundColor: Colors.white,
          // تعریف شعاع دایره ی پروفایل تصویری کاربر
          radius: 40,
          child: Icon(
            CupertinoIcons.person,
            // تعریف رنگ آیکون بر اساس رنگ پس زمینه ی themeData
            color: Theme.of(context).primaryColor,
            size: 40,
          ),
        ),
        // اضافه کردن فاصله ی بین دایره ی پروفایل تصویری کاربر و متن
        const SizedBox(
          height: 20,
        ),
        const Text(
          'سلام به کاربر عزیز',
          style: profileTitle,
        ),
        // اضافه کردن فاصله ی بین متن ها
        const SizedBox(
          height: 5,
        ),
        ElevatedButton(
          style: OutlinedButton.styleFrom(
            elevation: 5,
            backgroundColor: Colors.white,
            foregroundColor: Theme.of(context).primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: const Text(
            'ورود و عضویت',
            style: elevatedButtonText,
          ),
        ),
      ],
    );
  }
}

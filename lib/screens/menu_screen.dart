import 'package:flutter/material.dart';
import 'package:nahal_it/SideMenu/info_card.dart';
import 'package:nahal_it/SideMenu/menu_title.dart';
import 'package:nahal_it/SideMenu/socialmedia_icons.dart';
// import 'package:side_menu_app/SideMenu/socialmedia_icons.dart';
// import 'package:side_menu_app/SideMenu/info_card.dart';
// import 'package:side_menu_app/SideMenu/menu_title.dart';

// صفحه ی منوی نوار اپ بار
class MenuAppBarScreen extends StatelessWidget {
  const MenuAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // صدا زدن رنگ پس زمینه از themeData
      backgroundColor: Theme.of(context).primaryColor,
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              // بخش پروفایل کاربر
              InfoCard(),
              SizedBox(
                height: 10,
              ),
              // اضافه کردن منوهای برنامه
              SideMenuTitle(),
              // اضافه کردن آیکون های شبکه اجتماعی
              SocialMediaIcons(),
            ],
          ),
        ),
      ),
    );
  }
}

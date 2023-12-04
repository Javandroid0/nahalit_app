import 'package:flutter/material.dart';
import 'package:nahal_it/SideMenu/class_list_title.dart';
import 'package:nahal_it/home_screen.dart';
import 'package:nahal_it/screens/blog_screen.dart';
import 'package:nahal_it/screens/contact_screen.dart';
import 'package:nahal_it/screens/orders_screen.dart';
import 'package:nahal_it/screens/portfolio_screen.dart';
import 'package:nahal_it/screens/products_screen.dart';
import 'package:nahal_it/screens/recruitment_screen.dart';
import 'package:nahal_it/screens/services_screen.dart';
import 'package:nahal_it/styles/styles.dart';
// import 'package:side_menu_app/SideMenu/class_list_title.dart';
// import 'package:side_menu_app/screens/blog_screen.dart';
// import 'package:side_menu_app/screens/contact_screen.dart';
// import 'package:side_menu_app/screens/home_screen.dart';
// import 'package:side_menu_app/screens/orders_screen.dart';
// import 'package:side_menu_app/screens/portfolio_screen.dart';
// import 'package:side_menu_app/screens/products_screen.dart';
// import 'package:side_menu_app/screens/recruitment_screen.dart';
// import 'package:side_menu_app/screens/services_screen.dart';
// import 'package:side_menu_app/styles/styles.dart';

// صفحه ی لیست منوهای اپ بار

class SideMenuTitle extends StatefulWidget {
  const SideMenuTitle({super.key});

  @override
  State<SideMenuTitle> createState() => _SideMenuTitleState();
}

class _SideMenuTitleState extends State<SideMenuTitle> {
  // تعریف متغیر برای ذخیره لیست منوی انتخاب شده در اپ بار
  int _selectedContainer = -1;

  // تعریف لیست منوهای زیر خط پروفایل تصویری کاربر
  List<ListTitles0> listTitles_0 = [
    ListTitles0(
      titles0: 'صفحه اصلی',
      icons0: const Icon(
        Icons.home_outlined,
        size: 35,
      ),
    ),
    ListTitles0(
      titles0: 'محصولات',
      icons0: const Icon(
        Icons.shopping_cart_outlined,
        size: 35,
      ),
    ),
    ListTitles0(
      titles0: 'ثبت سفارش',
      icons0: const Icon(
        Icons.add_card_outlined,
        size: 35,
      ),
    ),
    ListTitles0(
      titles0: 'بلاگ',
      icons0: const Icon(
        Icons.menu_book_outlined,
        size: 35,
      ),
    ),
    ListTitles0(
      titles0: 'نمونه کارها',
      icons0: const Icon(
        Icons.qr_code_2_outlined,
        size: 35,
      ),
    ),
    ListTitles0(
      titles0: 'استخدام',
      icons0: const Icon(
        Icons.person_add_alt_1_outlined,
        size: 35,
      ),
    ),
  ];

  // تعریف لیست منوهای زیر خط آخر اپ بار
  List<ListTitles1> listTitles_1 = [
    ListTitles1(
      titles1: 'خدمات ما',
      icons1: const Icon(
        Icons.business_outlined,
        size: 35,
      ),
    ),
    ListTitles1(
      titles1: 'تماس با ما',
      icons1: const Icon(
        Icons.phone_outlined,
        size: 35,
      ),
    ),
  ];

  final pages0 = [
    const HomeScreen(),
    const ProductsScreen(),
    const OrdersScreen(),
    const BlogScreen(),
    const PortfolioScreen(),
    const RecruitmentScreen(),
  ];

  final pages1 = [
    const OurServicesScreen(),
    ContactUsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // اضافه کردن خط جدا کننده بین پروفایل و لیست های اول
          const Padding(
            padding: EdgeInsets.only(
              left: 25,
            ),
            child: Divider(
              color: Colors.white70,
              height: 12,
            ),
          ),
          // ایجاد لیست های زیر پروفایل تا 7 مورد
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listTitles_0.length,
            itemBuilder: (context, index) => Stack(
              children: [
                // ایجاد دکمه انتخاب شده برای هر لیست منوها
                if (_selectedContainer == index)
                  Positioned(
                    height: 52,
                    width: 288,
                    left: 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                // ایجاد لیست منوهای اپ بار زیر خط پروفایل کاربر => آیکون در کنار متن هنوان ها
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedContainer = index;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pages0[index],
                        ),
                      );
                    });
                  },
                  leading: listTitles_0[index].icons0,
                  iconColor: Colors.white70,
                  title: Text(
                    listTitles_0[index].titles0,
                    style: listTitle,
                  ),
                ),
              ],
            ),
          ),
          // ایجاد خط جدا کننده بین لیست های اول و دوم
          const Padding(
            padding: EdgeInsets.only(
              left: 25,
            ),
            child: Divider(
              color: Colors.white70,
              height: 7,
            ),
          ),
          // ایجاد لیست منوهای اپ بار زیر خط آخر
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listTitles_1.length,
            itemBuilder: (context, index) => Stack(
              children: [
                // ایجاد دکمه انتخاب شده برای هر لیست منوها
                if (_selectedContainer == index + listTitles_0.length)
                  Positioned(
                    height: 52,
                    width: 288,
                    left: 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 68, 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                // ایجاد لیست منوهای اپ بار زیر خط آخر => آیکون در کنار متن هنوان ها
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedContainer = index + listTitles_0.length;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pages1[index],
                        ),
                      );
                    });
                  },
                  leading: listTitles_1[index].icons1,
                  iconColor: Colors.white70,
                  title: Text(
                    listTitles_1[index].titles1,
                    style: listTitle,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 25,
            ),
            child: Divider(
              color: Colors.white70,
              height: 18,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nahal_it/screens/appbar_screen.dart';
import 'package:nahal_it/screens/menu_screen.dart';
// import 'package:side_menu_app/screens/appbar_screen.dart';
// import 'package:side_menu_app/screens/menu_screen.dart';

// این صفحه برای تست اپلیکیشن استفاده میشود و فاقد اهمیت است

// سفحه اصلی اپلیکیشن
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // تعریف منوی نوار اپ بار در صفحه MenuAppBarScreen
      drawer: MenuAppBarScreen(),
      appBar: AppBarScreen(
        title: 'نهال آی تی',
      ),
      body: SafeArea(
        // متن خوش آمد گویی در وسط صفحه
        child: Center(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}

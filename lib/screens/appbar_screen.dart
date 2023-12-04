import 'package:flutter/material.dart';
import 'package:nahal_it/styles/styles.dart';
//import 'package:side_menu_app/styles/styles.dart';

// صفحه ی اپ بار
class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
      title: Text(
        title,
        style: appBarTitle,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

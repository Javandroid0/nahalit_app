import 'package:flutter/material.dart';

// ساخت کلاس برای ساخت لیست منوهای اپ بار

// لیست عناوین زیر خط پروفایل تصویری کاربر (آیکون در کنار متن). تا 7 مورد
class ListTitles0 {
  // عنوان های متنی
  final String titles0;
  // عناوین آیکون
  final Icon icons0;

  ListTitles0({
    required this.titles0,
    required this.icons0,
  });
}

// لیست عناوین زیر خط آخر منو ها (آیکون در کنار متن). تا 2 مورد
class ListTitles1 {
  // عنوان های متنی
  final String titles1;
  // عناوین آیکون
  final Icon icons1;

  ListTitles1({
    required this.titles1,
    required this.icons1,
  });
}

// لیست های اطلاعات برای صفحه ثبت سفارش
class ListTexts {
  final String texts;

  ListTexts({
    required this.texts,
  });
}

// لیست های اطلاعات برای صفحه استخدام
class ListTexts1 {
  final String texts1;

  ListTexts1({
    required this.texts1,
  });
}

class Item {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final String description;
  final String price;
  final int quantity;

  Item({
    required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.description,
    required this.price,
    required this.quantity,
  });
}

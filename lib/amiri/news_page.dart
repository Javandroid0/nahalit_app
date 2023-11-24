import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                label: Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
        ),
        leadingWidth: size.width / 5,
        leading: Row(
          children: [
            const SizedBox(width: 5),
            GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Icon(Icons.menu)),
            const Icon(Icons.shopping_cart_rounded),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: size.height / 3.0,
              width: size.width / 1.1,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            // height: size.height / 2.0,
            width: size.width / 1.2,
            child: const Column(
              children: [
                Text(
                  "Dart: زبانی اپن‌سورس که زمانی قصد رقابت با JavaScript را داشت",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 10),
                Text(
                  """Dart زبان آپن‌سورس است که در ابتدا به منظور جایگزینی زبان محبوب JavaScript طراحی شد و علیرغم اینکه گوگل تمام تلاش خود را به کار بست تا امکان کامپایل دارت به جاوااسکریپت با سهولت بیشتری صورت گیرد،‌ اما این زبان اختصاصی گوگل آن‌طور که باید و شاید مورد استقبال دولوپرها قرار نگرفت و بیشتر کاربردی درون شرکتی برای این غول فناوری دنیا پیدا کرد.

زمانی که دارت منتشر شد، مورد انتقاد بسیاری از توسعه‌دهندگان قرار گرفت که شاید یکی از دلایل شکل‌گیری انتقاداتی اینچنین، مقایسه‌ای بود که آن‌ها مابین زبان‌های برنامه‌نویسی دارت و جاوااسکریپت انجام می‌دادند. جاوااسکریپت از این ایدوئولوژی پیروی می‌کرد که در همهٔ مرورگرها به خوبی کار کند اما گوگل با انتشار دارت به دنبال توسعهٔ زبانی بود که به خوبی در گوگل کروم اجرا شود و در دیگر مرورگرهای محبوب همچون فایرفاکس، سافاری و غیره چنین عملکرد مثبتی نداشت. Lars Bak و Kasper Lund که طراحان اصلی زبان دارت هستند معتقدند:

برای اینکه بهترین کار رو نه تنها برای مرورگر گوگل کروم بلکه برای همهٔ کاربران و به طور کلی وب انجام بدیم، تلاش‌های خود رو بر روی کامپایل کردن دارت به جاوااسکریپت متمرکز خواهیم کرد و تصمیم گرفته‌ایم تا ماشین مجازی دارت (Dart VM) رو در کروم ادغام نکنیم. استراتژی جدید ما اینه که ویژگی‌های مورد نیاز کاربرانمون برای ساخت اپلیکیشن‌های مبتنی بر وب با استفاده از زبان دارت رو فراهم کنیم.

گرچه در گذشته گوگل بسیاری از پروژه‌های خود را متوقف کرده است، اما به نظر می رسد که این کمپانی در حال حاضر تصمیم به متوقف کردن توسعهٔ این زبان ندارد به طوری که بخش‌هایی از یکی از بزرگ‌ترین سرویس‌های این شرکت، Google Ads، با دارت توسعه یافته است. همچنین طبق سایت رسمی این زبان، دارت زبانی اپن‌سورس و رایگان با سینتکسی تمیز و آشنا برای بسیاری دولوپرها، برخوردار از ابزارهای جانبی قدرتمند و همچنین سریع برای توسعهٔ اپ موبایل و همچنین وب اپلیکیشن است. به عنوان نمونه سورس‌کد نوشته‌شده با این زبان داریم:

import 'dart:async';
import 'dart:math' show Random;

main() async {
  print('Compute π using the Monte Carlo method.');
  await for (var estimate in computePi().take(500)) {
    print('π ≅ \$estimate');
  }
}

/// Generates a stream of increasingly accurate estimates of π.
Stream<double> computePi({int batch: 100000}) async* {
  var total = 0;
  var count = 0;
  while (true) {
    var points = generateRandom().take(batch);
    var inside = points.where((p) => p.isInsideUnitCircle);
    total += batch;
    count += inside.length;
    var ratio = count / total;
    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int seed]) sync* {
  final random = Random(seed);
  while (true) {
    yield Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x, y;
  const Point(this.x, this.y);
  bool get isInsideUnitCircle => x * x + y * y <= 1;
}
در یک کلام، این داده‌ها تأکیدی است بر این واقعیت که جاوااسکریپت زبان اصلی وب باقی خواهد ماند.""",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.thumb_up_rounded),
              Icon(Icons.thumb_down_rounded),
              Icon(Icons.share),
            ],
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}

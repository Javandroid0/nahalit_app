import 'package:flutter/material.dart';

class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 4.0,
      width: size.width / 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.pink[100]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "images/plant.png",
                  scale: 8,
                ),
                const Text("نهال ای تی"),
                const SizedBox(height: 15),
                Image.asset(
                  "images/earth.png",
                  scale: 8,
                ),
                const Text("سایت نهال  "),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                SizedBox(
                  width: size.width / 2.0,
                  child: const Text(
                    "آدرس : تهران میدان فردوسی خیابان ایرانشهر بین سمیه و طالقانی مجتمع تجاری میلاد واحد 9",
                    textDirection: TextDirection.rtl,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: size.width / 2.0,
                  child: const Text(
                    "پشتیبانی 24 ساعته : 02188867940 – 09927674217",
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

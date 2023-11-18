import 'package:flutter/material.dart';
import 'package:nahal_it/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ContainerWithIndicator(size: size, controller: _controller),
            SmoothPageIndicator(
              controller: _controller,
              count: 6,
              effect: const ExpandingDotsEffect(
                  dotColor: Colors.deepPurple,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.grey),
            ),
            const SizedBox(height: 20),
            Container(
              height: size.height / 2.0,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.teal[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Image.network(
                      "http://nahalit.com/wp-content/themes/Sigma/assets/img/info.svg"),
                  const Text('''بسته نصبی + راهنمای نصب فارسی
درگاه های پرداخت واسط و مستقیم
پشتیبانی 24 ساعته محصولات
محصول اورجینال با آپدیت رایگان
بازگشت وجه بدون قید وشرط'''),
                  const Text("data"),
                  const SizedBox(height: 10, width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("dsc"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("dsc"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("dsc"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

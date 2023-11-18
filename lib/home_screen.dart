import 'package:flutter/material.dart';
import 'package:nahal_it/malika/word_press.dart';
import 'package:nahal_it/news_page.dart';
import 'package:nahal_it/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'api.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
/*
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "این سایت وجود ندارد";
    }
  }
*/
  final _controller = PageController();
  final _controler = PageController();
  List title = [
    "محصولات",
    "ثبت سفارش",
    "بلاگ",
    "نمونه کارها",
    "اموزش",
    "تماس با ما",
    "خدمات ما",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //  appBar: newMethod(size),
        drawer: Drawer(
          // صدا زدن رنگ پس زمینه از themeData
          backgroundColor: Colors.deepPurple,
          child: DrawerBook(),
        ),
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CustomSlider(),
              const SizedBox(height: 15),
              // this one GrideViewWidget it a Widget
              // i creat
              // GrideViewWidget(size: size),
              FirstListViewBuilder(size: size),
              SecondListViewBuilder(size: size),
              // A Container to showing Product for Sell
              ContainerWithIndicator(size: size, controller: _controller),
              // this a dots when you scroll to right
              // or left they goes to the next dot
              SmoothPageInd(controler: _controller),
              const SizedBox(height: 30),
              GrideViewWidget(size: size),
              const SizedBox(height: 20),
              // Container with indacator
              WorldPress(size: size),
              const SizedBox(height: 15),
              APageViewBuilder(size: size, controler: _controler),
              SmoothPageInd(controler: _controler),
              const SizedBox(height: 30),
              const Text(
                "اخرین مطالب نهال آی تی",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              //  SizedBox(height: 5),
              HomePageNews(size: size),
              const Text("اپلیکیشن نهال ای تی فروش انواع قالب و اموزش"),
              const SizedBox(height: 20),
              DescriptionContainer(size: size),
              const SizedBox(height: 20),
              Center(
                  child: Text(
                "nahalit.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[300]),
              )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////

class WorldPress extends StatelessWidget {
  const WorldPress({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 2.8,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WordPressPliginScreen()));
                },
                child: SizedBox(
                    width: size.width / 3.0,
                    child: Column(
                      children: [
                        Image.asset(
                          product[index].image,
                          scale: 6,
                        ),
                        const SizedBox(height: 8),
                        Text(product[index].title)
                      ],
                    )),
              ),
            );
          }),
    );
  }
}

class GrideViewWidget extends StatelessWidget {
  const GrideViewWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 1.1,
      height: size.height / 5.0,
      child: GridView.builder(
          itemCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            mainAxisExtent: 80,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              width: 90,
              color: Colors.grey[100],
              child: Row(
                children: [
                  Image.asset(list2[index].images),
                  const SizedBox(width: 10),
                  Text(list2[index].title)
                ],
              ),
            );
          }),
    );
  }
}

class SmoothPageInd extends StatelessWidget {
  const SmoothPageInd({
    super.key,
    required PageController controler,
  }) : _controler = controler;

  final PageController _controler;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controler,
      count: 6,
      effect: const ExpandingDotsEffect(
          dotColor: Colors.greenAccent,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.tealAccent),
    );
  }
}

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

class HomePageNews extends StatelessWidget {
  const HomePageNews({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 0.65,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: size.height / 4.0,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  "https://blog.codemagic.io/uploads/covers/codemagic-blog-header-Dart-vs-Javascript.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("Mike Blue",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            const Icon(Icons.person, color: Colors.white),
                            SizedBox(width: size.width / 2.0),
                            const Text(
                              "119",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.visibility_rounded,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    const ListTile(
                      title: Text(
                        "جاوا اسکریپت خوش زبان قسمت سی و پنجم",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "به کلاس ریاضی کلاس دهم - دست نگه دارید! من قصد ندارم شما را با بی پایان شکنجه کنم صفحات نمادهای رمزآلود - در حال حاضر فقط این یک فرمول است. و حتی با این یکی، تنها کاری که انجام...",
                        maxLines: 4,
                      ),
                    ),
                    FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewsPage()));
                        },
                        child: const Text("...بیشتر بخوانید")),
                    const Divider(
                      endIndent: 50,
                      indent: 50,
                      color: Colors.grey,
                    )
                  ],
                ),
              )),
    );
  }
}

class APageViewBuilder extends StatelessWidget {
  const APageViewBuilder({
    super.key,
    required this.size,
    required PageController controler,
  }) : _controler = controler;

  final Size size;
  final PageController _controler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 200,
          child: PageView.builder(
              itemCount: 6,
              controller: _controler,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("images/photo.jpg"),
                        Container(
                            height: 30,
                            width: 100,
                            color: Colors.grey[400],
                            child: const Center(child: Text("HTML قالب"))),
                        const Text("قالب در دست ساخت ابروان"),
                        const Text("unName"),
                        const Text("119.0"),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class FirstListViewBuilder extends StatelessWidget {
  const FirstListViewBuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 1.8,
      width: double.infinity,
      child: ListView.builder(
          itemCount: thingsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      //  _launchUrl(thingsList[index].url);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(thingsList[index].images))),
                      height: size.width / 3.0,
                      width: size.width / 3.0,

                      //  child: Image.asset(thingsList[index]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(thingsList[index].title),
                ],
              ),
            );
          }),
    );
  }
}

class SecondListViewBuilder extends StatelessWidget {
  const SecondListViewBuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 1.8,
      width: double.infinity,
      child: ListView.builder(
          itemCount: thingsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      //  _launchUrl(thingsList[index].url);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(otherList[index].images))),
                      height: size.width / 3.0,
                      width: size.width / 3.0,

                      //  child: Image.asset(thingsList[index]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(otherList[index].title),
                ],
              ),
            );
          }),
    );
  }
}

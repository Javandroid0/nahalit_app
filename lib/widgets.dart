import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:nahal_it/aiden/log_in_two.dart';
import 'package:nahal_it/cart_provider.dart';
// import 'package:nahal_it/malika/color&font_managment.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api.dart';

class ContainerWithIndicator extends StatelessWidget {
  const ContainerWithIndicator({
    super.key,
    required this.size,
    required PageController controller,
  }) : _controller = controller;

  final Size size;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<CartProvider>(context);
    final cart = Provider.of<Cart>(context);
    return SizedBox(
      height: size.height / 1.5,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView.builder(
            itemCount: 6,
            controller: _controller,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "ویژه Html قالب های",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Image.asset("images/photo.jpg"),
                      Container(
                          height: 30,
                          width: 100,
                          color: Colors.grey[400],
                          child: const Center(child: Text("HTML قالب"))),
                      const Text("قالب در دست ساخت ابروان"),
                      const Text(
                        "unName",
                        textDirection: TextDirection.rtl,
                      ),
                      const Text(
                        "119.0",
                        textDirection: TextDirection.rtl,
                      ),
                      // اینجا باید این قالب به سبد افزوده شود
                      ElevatedButton(
                          onPressed: () {
                            cart.add(items[index]);
                          },
                          child: const Text("افزودن به سبد"))
                    ],
                  ),
                ),
              );
            }),
      ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: size.height / 0.45,
        child: GridView.builder(
            itemCount: 12,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 300,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                height: 0,
                width: 0,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.car_crash),
                    const Text("Hello world"),
                    const Text(
                        "در تیم نهال آی تی ، جهت بهره برداری بهتر خدمات هوش مصنوعی ، کاربران میتوانند به راحتی با متخصصان مختلف در حوزه هوش مصنوعی به صورت مشترک، مشاوره بگیرند."),
                    FilledButton(onPressed: () {}, child: const Text("child"))
                  ],
                ),
              );
            }),
      ),
    );
  }
}

////////////////////////////////////////////////
///CostimSlider

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: SliderModels.items.length,
        itemBuilder: (context, index, realindex) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: (AssetImage(SliderModels.items[index].image)),
                    fit: BoxFit.fill)),
          );
        },
        options: CarouselOptions(
          aspectRatio: 20 / 9,
          viewportFraction: 0.95,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}

class SliderModels {
  final String image;
  SliderModels(this.image);

  static final List<SliderModels> items = [
    SliderModels('images/1.jpg'),
    SliderModels('images/2.png'),
    SliderModels('images/3.png'),
    SliderModels('images/4.jpg'),
    SliderModels('images/5.png'),
    SliderModels('images/6.png'),
    SliderModels('images/7.jpg'),
    SliderModels('images/8.jpg'),
  ];
}

//////////////////////////////////////////////////////////////////////////////////
// this widget its the drawer
// i call thos one in home page
class DrawerBook extends StatelessWidget {
  DrawerBook({super.key});
  final urls = [
    'https://www.youtube.com/sigma',
    'https://telegram.me/hamkarwp',
    'https://www.facebook.com/sigma',
    'https://twitter.com/sigma',
    'https://instagram.com/sigma',
  ];

  // تعریف متغیر برای آیکون ها
  final icons = [
    FontAwesomeIcons.youtube,
    FontAwesomeIcons.telegram,
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.xTwitter,
    FontAwesomeIcons.instagram,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20),
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
      const SizedBox(height: 20),
      const Text(
        'سلام به کاربر عزیز',
        // style: profileTitle,
      ),
      // اضافه کردن فاصله ی بین متن ها
      const SizedBox(height: 5),
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
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const LogInTwo(),
          //   ),
          // );
        },
        child: const Text(
          'ورود و عضویت',
          // style: elevButtonText,
        ),
      ),

      const Divider(
        color: Colors.white70,
        height: 20,
        thickness: 2,
        endIndent: 20,
        indent: 20,
      ),

      ListTile(
        leading: Icon(
          Icons.phone_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'تماس با ما',
          // style: profileTitle,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.business_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'نمونه کارها',
          // style: profileTitle,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.person_add_alt_1_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'خدمات ما',
          // style: profileTitle,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.qr_code_2_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'محصولات',
          // style: profileTitle,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.menu_book_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'ثبت سفارش',
          // style: profileTitle,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.add_card_outlined,
          size: 28,
          color: Colors.grey[400],
        ),
        title: const Text(
          'بلاگ',
          // style: profileTitle,
        ),
      ),
      ListTile(
          leading: Icon(
            Icons.shopping_cart_outlined,
            size: 28,
            color: Colors.grey[400],
          ),
          title: const Text(
            'استخدام',
            // style: profileTitle,
          )),
      const Divider(
        color: Colors.white70,
        height: 20,
        thickness: 2,
        endIndent: 20,
        indent: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: icons
              .asMap()
              .entries
              .map(
                (entry) => IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse(urls[entry.key]));
                  },
                  icon: FaIcon(
                    entry.value,
                    color: Colors.white,
                  ),
                ),
              )
              .toList(), // تبدیل map به list
        ),
      ),
    ]);
  }
}

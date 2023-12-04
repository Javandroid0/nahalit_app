import 'package:flutter/material.dart';
import 'package:nahal_it/APageViewBuilder.dart';
import 'package:nahal_it/FirstListViewBuilder.dart';
import 'package:nahal_it/SecondListViewBuilder.dart';
import 'package:nahal_it/SmoothPageInd.dart';
import 'package:nahal_it/WorldPress.dart';
import 'news_api.dart';
import 'package:nahal_it/cart_provider.dart';
// import 'package:nahal_it/malika/order_screen.dart';
// import 'package:nahal_it/malika/word_press.dart';
import 'news_page.dart';
import 'widgets.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'api.dart';
import 'cart_screen.dart';
import 'package:badges/badges.dart' as badges;

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // DBHelper dbHelper = DBHelper();
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
    "اموزش وردپرس",
    "ثبت سفارش",
    "پریمر",
    "طراحی سایت",
    "اپلیکیشن",
    "سئو",
    "ui/ux",
    "پروشور",
    "پوستر",
    "کاتالوگ",
    "لوگو",
    "کارت ویزیت",
  ];

  @override
  Widget build(BuildContext context) {
    //  final cart = Provider.of<CartProvider>(context);
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //  appBar: newMethod(size),
        appBar: AppBar(
          //backgroundColor: Colors.green,
          toolbarHeight: 80,
          // title: const SizedBox(
          //   height: 40,
          //   child: TextField(
          //     decoration: InputDecoration(
          //         label: Icon(Icons.search_rounded),
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(25)))),
          //   ),
          // ),
          leadingWidth: size.width / 4,
          leading: const Row(
            children: [
              //const SizedBox(width: 5),
              // Builder(builder: (context) {
              //   return IconButton(
              //       onPressed: () {
              //         //Scaffold.of(context).openDrawer();
              //       },
              //       icon: const Icon(Icons.menu));
              // }),

              // IconButton(
              //   onPressed: () {
              //     // Navigator.push(
              //     //     context,
              //     //     MaterialPageRoute(
              //     //         builder: (context) => const CartScreen()));
              //   },
              //   icon: badges.Badge(
              //     position: badges.BadgePosition.topEnd(top: -10, end: -12),
              //     showBadge: true,
              //     ignorePointer: false,
              //     // onTap: () {},
              //     badgeContent: Consumer<Cart>(builder: (context, cart, child) {
              //       return Text("${cart.count}",
              //           style:
              //               const TextStyle(color: Colors.white, fontSize: 10));
              //     }),
              //     badgeStyle: badges.BadgeStyle(
              //       shape: badges.BadgeShape.circle,
              //       badgeColor: Colors.amber,
              //       padding: const EdgeInsets.all(5),
              //       borderRadius: BorderRadius.circular(4),
              //       borderSide: const BorderSide(color: Colors.black, width: 2),
              //       elevation: 0,
              //     ),
              //     child: const Icon(Icons.shopping_cart_rounded),
              //   ),
              // ),
            ],
          ),
        ),

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              // const CustomSlider(),
              SizedBox(height: 15),
              // SizedBox(
              //   height: size.width / 6,
              //   width: double.infinity,
              //   child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: title.length,
              //       itemBuilder: (context, index) {
              //         return Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Container(
              //             height: size.width / 7,
              //             width: size.width / 4,
              //             decoration: BoxDecoration(
              //                 color: Colors.deepPurple,
              //                 borderRadius: BorderRadius.circular(8)),
              //             child: InkWell(
              //               onTap: () {
              //                 // Navigator.push(
              //                 //     context,
              //                 //     MaterialPageRoute(
              //                 //         builder: (context) =>
              //                 //             const OrdersScreen()));
              //               },
              //               // child: Center(
              //               //   child: Text(
              //               //     title[index],
              //               //     style: const TextStyle(
              //               //         fontWeight: FontWeight.bold,
              //               //         color: Colors.white),
              //               //   ),
              //               // ),
              //             ),
              //           ),
              //         );
              //       }),
              // ),
              SizedBox(height: 10),
              // this one GrideViewWidget it a Widget
              // i creat
              // GrideViewWidget(size: size),
              FirstListViewBuilder(size: size),
              SecondListViewBuilder(size: size),
              // A Container to showing Product for Sell
              // this widget have add to buy List Botton
              ContainerWithIndicator(size: size, controller: _controller),
              // this a dots when you scroll to right
              // or left they goes to the next dot
              SmoothPageInd(controler: _controller),
              SizedBox(height: 30),
              // GrideViewWidget(size: size),
              SizedBox(height: 20),
              // Container with indacator
              WorldPress(size: size),
              SizedBox(height: 15),
              APageViewBuilder(size: size, controler: _controler),
              SmoothPageInd(controler: _controler),
              SizedBox(height: 30),
              const Text(
                "اخرین مطالب نهال آی تی",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              HomePageNews(size: size),
              //const Text("اپلیکیشن نهال ای تی فروش انواع قالب و اموزش"),
              SizedBox(height: 20),
              //DescriptionContainer(size: size),
              SizedBox(height: 20),
              Center(
                  child: Text(
                "nahalit.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[300]),
              )),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////

class HomePageNews extends StatelessWidget {
  const HomePageNews({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height / 0.60,
        width: double.infinity,
        child: ListView.builder(
            itemCount: news.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final articl = news[index];

              return Padding(
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
                            image: DecorationImage(
                                image: NetworkImage(articl.image
                                    // "https://blog.codemagic.io/uploads/covers/codemagic-blog-header-Dart-vs-Javascript.png",
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
                    ListTile(
                      title: Text(
                        articl.title,
                        textDirection: TextDirection.rtl,

                        ///  "جاوا اسکریپت خوش زبان قسمت سی و پنجم",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${articl.subtitle} ....",
                        textDirection: TextDirection.rtl,
                        maxLines: 4,
                      ),
                    ),
                    FilledButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NewsPage(
                                    articl: articl,
                                  )));
                        },
                        child: const Text("...بیشتر بخوانید")),
                    const Divider(
                      endIndent: 50,
                      indent: 50,
                      color: Colors.grey,
                    )
                  ],
                ),
              );
            }));
  }
}

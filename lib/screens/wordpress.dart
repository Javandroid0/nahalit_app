import 'package:flutter/material.dart';
import 'package:nahal_it/SideMenu/class_list_title.dart';
// import 'package:nahal_it/color&font_managment.dart';
import 'package:nahal_it/styles/styles.dart';
// import 'package:side_menu_app/SideMenu/class_list_title.dart';
// import 'package:side_menu_app/styles/styles.dart';

class WordPressPliginScreen extends StatefulWidget {
  const WordPressPliginScreen({super.key});

  @override
  State<WordPressPliginScreen> createState() => _WordPressPliginScreenState();
}

class _WordPressPliginScreenState extends State<WordPressPliginScreen> {
  List<Item> items = [
    Item(
      image: 'images/nahal.png',
      title1: 'amp نسخه موبایل',
      title2: 'پلاگین کاربردی',
      title3: 'قالب و پلاگین',
      description:
          'تکنولوژی موبایل ساز فوق پیشرفته که توسط گوگل ارائه شده است توسط افزونه نسخه موبایل ساز طراحی می شود ، با اینکه این تکنولوژی دشواری خاصی در طراحی دارد...',
      price: '\$ رایگان',
      quantity: 0,
    ),
    Item(
      image: 'images/nahal.png',
      title1: 'amp نسخه وب سایت',
      title2: 'پلاگین کاربردی',
      title3: 'قالب و پلاگین',
      description:
          'تکنولوژی هوش مصنوعی فوق پیشرفته که توسط مایکروسافت ارائه شده است توسط افزونه نسخه موبایل ساز طراحی می شود ، با اینکه این تکنولوژی دشواری خاصی در طراحی دارد...',
      price: '\$ 555.555',
      quantity: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Card(
                  elevation: 20,
                  color: const Color.fromARGB(255, 197, 255, 182),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(items[index].image),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        items[index].title1,
                        style: bodyMedium,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildTitleCard(items[index].title2),
                          const SizedBox(width: 10),
                          _buildTitleCard(items[index].title3),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          items[index].description,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 30,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index].price,
                              style: bodySmaller1,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 30,
                                ),
                                Text(
                                  items[index].quantity.toString(),
                                  style: bodySmaller1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 256,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: lightGreenColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('افزودن به سبد خرید'),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTitleCard(String text) {
    return Card(
      color: const Color.fromARGB(255, 163, 226, 165),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        child: Text(text),
      ),
    );
  }
}

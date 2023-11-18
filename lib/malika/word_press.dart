import 'package:flutter/material.dart';
import '../api.dart';
import 'color&font_managment.dart';

class WordPressPliginScreen extends StatefulWidget {
  const WordPressPliginScreen({super.key});

  @override
  State<WordPressPliginScreen> createState() => _WordPressPliginScreenState();
}

class _WordPressPliginScreenState extends State<WordPressPliginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: newMethod(size),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            const SizedBox(height: 5),
            Center(
              child: SizedBox(
                height: size.height / 1.0,
                width: size.width / 1.1,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 197, 255, 182),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Image.asset(items[index].image, scale: 9),
                            const SizedBox(height: 5),
                            Text(
                              items[index].title1,
                              //  style: bodyMedium,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildTitleCard(items[index].title2),
                                _buildTitleCard(items[index].title3),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              items[index].description,
                              style: const TextStyle(fontSize: 9),
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 20,
                              indent: 15,
                              endIndent: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  items[index].price,
                                  // style: bodySmaller1,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 10,
                                    ),
                                    Text(
                                      items[index].quantity.toString(),
                                      //  style: bodySmaller1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: size.width / 2.2,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: lightGreenColor,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text('افزودن به سبد خرید'),
                              ),
                            ),
                            //    const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleCard(String text) {
    return Container(
      height: 30,
      width: 60,
      color: const Color.fromARGB(255, 163, 226, 165),
      child: Text(text),
    );
  }
}

AppBar newMethod(Size size) {
  return AppBar(
    //  backgroundColor: Colors.green,
    toolbarHeight: 80,
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
        Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu));
        }),
        const Icon(Icons.shopping_cart_rounded),
      ],
    ),
  );
}

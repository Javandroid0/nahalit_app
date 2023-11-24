import 'package:flutter/material.dart';
import 'package:nahal_it/amiri/selling_page.dart';
import 'package:provider/provider.dart';
import '../amiri/api.dart';
import '../cart_provider.dart';
import '../amiri/cart_screen.dart';
import 'color&font_managment.dart';
import 'package:badges/badges.dart' as badges;

class WordPressPliginScreen extends StatefulWidget {
  const WordPressPliginScreen({super.key});

  @override
  State<WordPressPliginScreen> createState() => _WordPressPliginScreenState();
}

class _WordPressPliginScreenState extends State<WordPressPliginScreen> {
  @override
  Widget build(BuildContext context) {
    //final cart = Provider.of<Cart>(context);
    var size = MediaQuery.of(context).size;
    return Consumer<Cart>(
        builder: (context, cart, child) => Scaffold(
              appBar: AppBar(
                //backgroundColor: Colors.green,
                toolbarHeight: 80,
                title: const SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Icon(Icons.search_rounded),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                  ),
                ),
                leadingWidth: size.width / 4,
                leading: Row(
                  children: [
                    //const SizedBox(width: 5),
                    Builder(builder: (context) {
                      return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(Icons.menu));
                    }),

                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartScreen()));
                        },
                        icon: badges.Badge(
                            position:
                                badges.BadgePosition.topEnd(top: -10, end: -12),
                            showBadge: true,
                            ignorePointer: false,
                            // onTap: () {},
                            badgeContent: Text("${cart.count}",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            badgeStyle: badges.BadgeStyle(
                              shape: badges.BadgeShape.circle,
                              badgeColor: Colors.amber,
                              padding: const EdgeInsets.all(5),
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                              elevation: 0,
                            ),
                            child: const Icon(Icons.shopping_cart_rounded))),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    //
                    const SizedBox(height: 5),
                    Center(
                      child: SizedBox(
                        height: size.height / 1.0,
                        width: size.width / 1.1,
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final ite = items[index];
                            return Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: size.height / 1.6,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[
                                        100], // Color.fromARGB(255, 197, 255, 182),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(items[index].image, scale: 6),
                                      const SizedBox(height: 5),
                                      Text(
                                        ite.title1,
                                        //  style: bodyMedium,
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _buildTitleCard(items[index].title2),
                                          _buildTitleCard(items[index].title3),
                                        ],
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          items[index].description,
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      const Spacer(),
                                      const Divider(
                                        color: Colors.black,
                                        height: 20,
                                        indent: 15,
                                        endIndent: 15,
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const SizedBox(width: 15),
                                          Text(
                                            items[index].price,
                                            style: word,
                                          ),
                                          const Spacer(),
                                          const Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.shopping_bag_outlined,
                                              color: Colors.blueAccent,
                                              size: 20,
                                            ),
                                          ),
                                          Consumer<Cart>(
                                              builder: (context, cart, child) {
                                            return Text(
                                              "${cart.count}",
                                              style: word,
                                            );
                                          }),
                                          const SizedBox(width: 15),
                                        ],
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElvBut(ite: ite),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.orangeAccent,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return SellingPage();
                                              }));
                                            },
                                            child: const Text(
                                              'مشاهده محصول',
                                              style: elevButtonText,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
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
            ));
  }

  Widget _buildTitleCard(String text) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 163, 226, 165),
          borderRadius: BorderRadius.circular(8)),
      child: Center(child: Text(text)),
    );
  }
}

class ElvBut extends StatelessWidget {
  const ElvBut({
    super.key,
    required this.ite,
  });

  final Item ite;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightGreenColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: () {
        cart.add(ite);
      },
      child: const Text(
        'افزودن به سبد خرید',
        style: elevButtonText,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nahal_it/amiri/news_api.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
    required this.articl,
  });

  final NewsApi articl;

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
              height: size.height / 4.0,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(articl.image
                          // "https://blog.codemagic.io/uploads/covers/codemagic-blog-header-Dart-vs-Javascript.png",
                          ),
                      fit: BoxFit.fill)),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            // height: size.height / 2.0,
            width: size.width / 1.2,
            child: Column(
              children: [
                Text(
                  articl.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 10),
                Text(
                  articl.subtitle,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w300),
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

import 'package:flutter/material.dart';
import 'package:nahal_it/api.dart';

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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const WordPressPliginScreen()));
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

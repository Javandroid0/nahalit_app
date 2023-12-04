import 'package:flutter/material.dart';
import 'package:nahal_it/api.dart';

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

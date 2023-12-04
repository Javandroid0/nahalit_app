import 'package:flutter/material.dart';
import 'package:nahal_it/api.dart';

class SecondListViewBuilder extends StatelessWidget {
  const SecondListViewBuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 2.0,
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

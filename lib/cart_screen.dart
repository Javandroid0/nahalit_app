import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("سبد خرید")),
      ),
      body: SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: cart.basketItem.length,
          itemBuilder: (context, i) {
            return Card(
                child: SizedBox(
              height: size.width / 5.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(cart.basketItem[i].title1),
                    const SizedBox(width: 70),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green[800]),
                      child: IconButton(
                          onPressed: () {
                            cart.remove(cart.basketItem[i]);
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green[800]),
                        child: const Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.white,
                        )),
                  ]),
            ));
          },
        ),
      ),
    );
  }
}

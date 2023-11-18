import 'package:flutter/material.dart';
import '../color&font_managment.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          "محصولات",
          style: appBarTitle,
        ),
      ),
      body: const SafeArea(child: Text('محصولات')),
    );
  }
}

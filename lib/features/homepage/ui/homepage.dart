import 'package:ecommerce/features/homepage/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Trend'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cartShopping),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [ProductCard(), ProductCard()]),
            Row(children: [ProductCard(), ProductCard()]),
            Row(children: [ProductCard(), ProductCard()]),
            Row(children: [ProductCard(), ProductCard()]),
          ],
        ),
      ),
    );
  }
}

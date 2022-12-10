// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furntiure_app/constants.dart';
import 'package:furntiure_app/models/Product.dart';
import 'package:furntiure_app/screens/details/details_screen.dart';
import 'package:furntiure_app/screens/home/components/categories.dart';
import 'package:furntiure_app/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: kDefaultPaddin / 1.5,
        ),
        const Categories(),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin),
                itemCount: products.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  index: index,
                ),
              ),
            ),
          ],
        ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:furntiure_app/constants.dart';
import 'package:furntiure_app/models/Product.dart';
import 'package:furntiure_app/screens/details/details_screen.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final int index;

  const ItemCard({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DetailsScreen(product: products[index]);
          },
        ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: product.color),
              child: Hero(
                  tag: "${product.id}",
                  child: Image(image: AssetImage(product.image))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

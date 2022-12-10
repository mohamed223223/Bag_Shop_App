import 'package:flutter/material.dart';
import 'package:furntiure_app/constants.dart';
import 'package:furntiure_app/models/Product.dart';

class productTitleWithImage extends StatelessWidget {
  const productTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mohamed Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product!.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Price\n"),
                TextSpan(
                    text: "\$${product!.price}",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                  child: Hero(
                tag: "${product!.id}",
                child: Image(
                  image: AssetImage(
                    product!.image,
                  ),
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

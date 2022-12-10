// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furntiure_app/constants.dart';
import 'package:furntiure_app/models/Product.dart';
import 'package:furntiure_app/screens/details/components/AddToCart.dart';
import 'package:furntiure_app/screens/details/components/cart_counter.dart';
import 'package:furntiure_app/screens/details/components/color_and_size.dart';
import 'package:furntiure_app/screens/details/components/counter_with_favorite_button.dart';
import 'package:furntiure_app/screens/details/components/description.dart';
import 'package:furntiure_app/screens/details/components/product_title_with_image.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;

  const DetailsBody(this.product);

  @override
  Widget build(BuildContext context) {
    // Its Provide total hight and width
    Size size = MediaQuery.of(context).size;

    // ignore: unused_local_variable
    Color? productColor = product!.color;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                      top: size.height * 0.12),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      CounterWithFavotiteButton(),
                      SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      AddToCart(product: product, productColor: productColor)
                    ],
                  ),
                ),
                productTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

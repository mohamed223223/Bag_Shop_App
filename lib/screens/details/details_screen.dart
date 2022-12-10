import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furntiure_app/constants.dart';
import 'package:furntiure_app/models/Product.dart';
import 'package:furntiure_app/screens/details/components/details_body.dart';
import 'package:furntiure_app/screens/home/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;

  const DetailsScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: buildAppBar(context),
      body: DetailsBody(product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product!.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg")),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}

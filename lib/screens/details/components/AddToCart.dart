import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furntiure_app/models/Product.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  Product? product;
  final Color? productColor;

  AddToCart({
    Key? key,
    required this.product,
    this.productColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: productColor!)),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/add_to_cart.svg",
                  color: product!.color,
                )),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(productColor!)),
                  onPressed: () {},
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

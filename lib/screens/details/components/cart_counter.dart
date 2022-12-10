import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLinedButton(Icons.remove, () {
          setState(() {
            if (numOfItems == 1) {
            } else {
              numOfItems--;
            }
          });
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            // If our Items is less than 10 Its shows 01 02 Like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        buildOutLinedButton(Icons.add, () {
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutLinedButton(IconData iconData, Function() press) {
    return SizedBox(
      height: 32,
      width: 42,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
        onPressed: press,
        child: Icon(
          iconData,
        ),
      ),
    );
  }
}

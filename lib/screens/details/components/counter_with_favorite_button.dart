// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furntiure_app/screens/details/components/cart_counter.dart';

class CounterWithFavotiteButton extends StatelessWidget {
  const CounterWithFavotiteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          height: 32,
          width: 32,
          padding: EdgeInsets.all(8.0),
          decoration:
              BoxDecoration(color: Color(0xFFFF6464), shape: BoxShape.circle),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}

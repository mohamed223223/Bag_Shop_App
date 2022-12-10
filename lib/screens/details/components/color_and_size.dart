import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  ColorDot(
                    // ignore: prefer_const_constructors
                    dotColor: Color(
                      0XFF356C95,
                    ),
                    isSelected: true,
                  ),
                  ColorDot(
                    dotColor: Color(0XFFF8C078),
                  ),
                  ColorDot(
                    dotColor: Color(0XFFA29B9B),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text:
                  TextSpan(style: TextStyle(color: kTextLightColor), children: [
            TextSpan(text: "Size\n"),
            TextSpan(
                text: "${product!.size}",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold))
          ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color dotColor;
  final bool isSelected;

  const ColorDot({
    Key? key,
    this.isSelected = false,
    required this.dotColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPaddin / 4, right: kDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              Border.all(color: isSelected ? dotColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
      ),
    );
  }
}

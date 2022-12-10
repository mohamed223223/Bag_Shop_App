import 'package:flutter/material.dart';
import 'package:furntiure_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewellery", "Foot Wear", "Dresses"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == index
                            ? kTextColor
                            : kTextLightColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

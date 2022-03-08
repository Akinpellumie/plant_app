import 'package:flutter/material.dart';
import 'package:plant_app/helpers/constants.dart';


class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
              plantImage: "assets/images/bottom_img_1.png", press: () {}),
          FeaturedPlantCard(
              plantImage: "assets/images/bottom_img_2.png", press: () {}),
          FeaturedPlantCard(
              plantImage: "assets/images/bottom_img_1.png", press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    required this.plantImage,
    required this.press,
  }) : super(key: key);

  final String plantImage;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(plantImage),
          ),
        ),
      ),
    );
  }
}

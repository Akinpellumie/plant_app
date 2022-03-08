import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/helpers/constants.dart';

import 'featured_plants.dart';
import 'header_with_search_box.dart';
import 'recommended_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //it will provide us the total height of our screen
    Size size = MediaQuery.of(context).size;

    //it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          const RecommendedPlants(),
          TitleWithMoreBtn(title: "Featured", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}

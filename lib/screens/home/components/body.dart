import 'package:first_UI_app/constants.dart';
import 'package:first_UI_app/models/recipeBundle.dart';
import 'package:first_UI_app/screens/home/components/recipe_bundle_card.dart';
import 'package:first_UI_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
          child: GridView.builder(
              itemCount: recipeBundles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => RecipeBundleCard()),
        )),
      ],
    );
  }
}

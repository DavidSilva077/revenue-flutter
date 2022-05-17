import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revenue_streams/models/recipe.dart';
import 'package:revenue_streams/views/home.dart';
import 'package:revenue_streams/views/widgets/recipe__card.dart';

class Food extends StatelessWidget {

  late RecipeCard _recipers;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(_recipers.thumbnailUrl),
    );
  }
}

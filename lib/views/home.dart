import 'package:flutter/material.dart';
import 'package:revenue_streams/models/recipe.api.dart';
import 'package:revenue_streams/models/recipe.dart';
import 'package:revenue_streams/views/food.dart';
import 'package:revenue_streams/views/widgets/recipe__card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Revenue')
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, )
                    },
                    child: RecipeCard(
                        title: _recipes[index].name,
                        cookTime: _recipes[index].totalTime,
                        rating: _recipes[index].rating.toString(),
                        thumbnailUrl: _recipes[index].images),
                  );
                },
              ));
  }
}
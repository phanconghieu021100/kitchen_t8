import 'package:flutter/material.dart';
import 'package:kitchenwise/constants.dart';
import 'package:kitchenwise/u.dart';
import 'package:kitchenwise/widgets/auth_widgets/login_button.dart';
import 'package:kitchenwise/widgets/recipe_widgets/recipe_cookware.dart';
import 'package:kitchenwise/widgets/recipe_widgets/recipe_ingredients.dart';
import 'package:kitchenwise/widgets/recipe_widgets/recipe_procedure.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> tabs = [
      Tab(child: Text('Ingredients')),
      Tab(child: Text('Cookware')),
      Tab(child: Text('Procedure')),
    ];

    const List<Widget> tabViews = [
      RecipeIngredients(),
      RecipeCookware(),
      RecipeProcedure(),
    ];

    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: SizedBox.expand(
              child: Image.network(
                'https://img.freepik.com/free-vector/food-ingredients-recipe-ravioli-hand-drawn-vector-illustration_1284-42012.jpg?t=st=1713591403~exp=1713595003~hmac=2b6c31b4047ee2cf92c4d1a082c2c8dc54e6689f0d4f3633b3ebda67ceb2d6c6&w=1380',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppConstants.bottomPadding),
            child: Text(
              'Fried Rice',
              style:AppFonts.quicksand(size: 16),
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Expanded(
              child: Column(
                children: <Widget>[
                  ///ScaleTabBar
                  Builder(builder: (context) {
                    return TabBar(
                      tabs: tabs,
                      labelColor: AppColors.tColor4,
                      labelStyle: AppFonts.quicksand(size: 16),
                      unselectedLabelStyle: AppFonts.quicksand(size: 12),
                    );
                  }),
                  const Expanded(child: TabBarView(children: tabViews)),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(AppConstants.sidePadding, 0.0,
          //       AppConstants.sidePadding, AppConstants.bottomPadding),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       const Icon(
          //         Icons.edit_outlined,
          //         size: AppConstants.appIconSize,
          //       ),
          //       SizedBox(
          //         width: MediaQuery.of(context).size.width / 2,
          //         child: LoginButton(
          //           onPressed: () {},
          //           centerText: 'Add to shopping list',
          //           fontSize: 15.0,
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

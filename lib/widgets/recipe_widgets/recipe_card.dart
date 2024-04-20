import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kitchenwise/constants.dart';
import 'package:kitchenwise/u.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.title,
    required this.imageUrl, // Thay đổi kiểu dữ liệu của imageUrl từ String sang NetworkImage
    this.imageHeight = 120,
  }) : super(key: key);

  final String title;
  final NetworkImage imageUrl; // Sửa kiểu dữ liệu của imageUrl từ String sang NetworkImage
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/home/recipe_page');
      },
      child: Column(
        children: [
          SizedBox(
            height: imageHeight,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppConstants.imageRadius),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: imageUrl.url,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
         
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: AppFonts.quicksand(size: 15,color: AppColors.tColor4),
          )
        ],
      ),
    );
  }
}

import 'package:kitchenwise/models/recipe_model.dart';
import 'package:flutter/material.dart';
List<Recipe> recipeData = [
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/premium-photo/close-up-noodles-bowl_1048944-10242368.jpg?w=826'),
    title: 'Classic Tomato Spaghetti',
    description: 'A simple and classic spaghetti recipe using fresh tomatoes.',
    ingredients: [
      'Spaghetti',
      'Fresh tomatoes',
      'Olive oil',
      'Garlic',
      'Basil'
    ],
  ),
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/premium-photo/curry-with-chicken-onions-indian-food-asian-cuisine-top-view_2829-4411.jpg?w=826'),
    title: 'Chicken Curry',
    description: 'Rich and creamy chicken curry with a blend of spices.',
    ingredients: [
      'Chicken',
      'Coconut milk',
      'Curry powder',
      'Onions',
      'Garlic',
      'Ginger'
    ],
  ),
  Recipe(
    imageUrl:NetworkImage('https://img.freepik.com/premium-photo/taste-magic-delicious-food-experiences-ai-generated-best-food-photo_1070043-82044.jpg?w=826'),
    title: 'Beef Stew',
    description: 'Hearty beef stew with root vegetables in a rich gravy.',
    ingredients: ['Beef chuck', 'Carrots', 'Potatoes', 'Onions', 'Beef broth'],
  ),
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/free-photo/mexican-tacos-with-beef-tomato-sauce-salsa_2829-14218.jpg?t=st=1713590731~exp=1713594331~hmac=4ee29341da8855339b07accfd0901245cd6399c3f2ea8118bb5c06adb6d6814a&w=826'),
    title: 'Vegan Tacos',
    description:
        'Quick and easy vegan tacos filled with a flavorful mix of vegetables and spices.',
    ingredients: [
      'Tortillas',
      'Black beans',
      'Corn',
      'Avocado',
      'Lime',
      'Cilantro'
    ],
  ),
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/premium-photo/professional-graphy-delicious-chocolate-cake_198067-380461.jpg?w=826'),
    title: 'Chocolate Cake',
    description: 'Decadent and moist chocolate cake for any occasion.',
    ingredients: ['Cocoa powder', 'Flour', 'Sugar', 'Eggs', 'Butter'],
  ),
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/free-photo/rice-pouring-delicious-salad-meal-plate-with-chopsticks-wooden-black-background-side-view-space-text_176474-3811.jpg?t=st=1713591104~exp=1713594704~hmac=4784b742396404798beb8f5509803965d15827e4594f40283c6ffdae64976bf4&w=1380'),
    title: 'Caesar Salad',
    description: 'Classic Caesar salad with homemade dressing and croutons.',
    ingredients: [
      'Romaine lettuce',
      'Parmesan cheese',
      'Croutons',
      'Caesar dressing'
    ],
  ),
  Recipe(
    imageUrl:NetworkImage('https://img.freepik.com/free-photo/exotic-cut-slice-seafood-salmon-plate_23-2148637837.jpg?t=st=1713590873~exp=1713594473~hmac=c05a2a6db2a8cc10d33ab24d2d31115f88b858128f0e4e95f7a79e876b5a8a79&w=826'),
    title: 'Grilled Salmon',
    description: 'Perfectly grilled salmon with a lemon herb seasoning.',
    ingredients: ['Salmon fillets', 'Lemon', 'Dill', 'Garlic powder'],
  ),
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/free-photo/flat-lat-bowls-with-pumpkin-soup_23-2148666836.jpg?t=st=1713591028~exp=1713594628~hmac=8b4d54dae54bc3d07600a3f12b18e10075a1a0fac54faa755815d77d5e0c9748&w=826'),
    title: 'Pumpkin Soup',
    description: 'Creamy pumpkin soup with a touch of nutmeg and cinnamon.',
    ingredients: [
      'Pumpkin puree',
      'Vegetable stock',
      'Cream',
      'Nutmeg',
      'Cinnamon'
    ],
  ),
  Recipe(
    imageUrl:NetworkImage('https://img.freepik.com/free-photo/main-course-restaurant_7939-2400.jpg?t=st=1713591180~exp=1713594780~hmac=f672494001cd74383be5fda35f85af68cf4b1a3c02b7d929bafe4ac72a003742&w=826'),
    title: 'creamy risotto ',
    description:
        'A creamy risotto that brings out the earthy flavor of mushrooms.',
    ingredients: [
      'Arborio rice',
      'Mushrooms',
      'Chicken broth',
      'Parmesan cheese',
      'Onions'
    ],
  ),
  Recipe(
    imageUrl: NetworkImage('https://img.freepik.com/free-photo/top-view-delicious-apple-cake-with-fresh-green-apples-tea-cinnamon-cake-biscuit-sugar-fruit_140725-22462.jpg?t=st=1713591208~exp=1713594808~hmac=20b46fe447d6d86d5b68d0bdd4c392ad290a34da0a1faace55b9f81f1003102e&w=826'),
    title: 'Apple Pie',
    description:
        'Classic apple pie with a flaky crust and sweet apple filling.',
    ingredients: ['Apples', 'Sugar', 'Cinnamon', 'Pie crust'],
  ),
];

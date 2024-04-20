import 'package:flutter/material.dart';

class Recipe {
  Recipe({
    required this.title,
    this.description = '',
    this.ingredients = const [],
    required this.imageUrl,
  });

  final String title;
  final String description;
  final List<String> ingredients;
  final NetworkImage imageUrl; // Thay đổi kiểu dữ liệu từ String sang NetworkImage
}

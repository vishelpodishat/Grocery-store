import 'package:flutter/material.dart';

class CategoryItem {
  final Image image;
  final String title;
  final String count;

  CategoryItem({
    required this.image,
    required this.title,
    required this.count,
  });

  static List<CategoryItem> getCategory() {
    List<CategoryItem> categories = [];

    categories.add(CategoryItem(
      image: Image.asset('assets/images/vegetables.png'),
      title: 'Vegetables',
      count: '(43)',
    ));

    categories.add(CategoryItem(
      image: Image.asset('assets/images/fruits.png'),
      title: 'Fruits',
      count: '(32)',
    ));

    categories.add(CategoryItem(
      image: Image.asset('assets/images/bread.png'),
      title: 'Bread',
      count: '(22)',
    ));

    categories.add(CategoryItem(
      image: Image.asset('assets/images/sweets.png'),
      title: 'Sweets',
      count: '(56)',
    ));

    categories.add(CategoryItem(
      image: Image.asset('assets/images/pasta.png'),
      title: 'Pasta',
      count: '(43)',
    ));

    categories.add(CategoryItem(
      image: Image.asset('assets/images/drinks.png'),
      title: 'Drinks',
      count: '(43)',
    ));

    return categories;
  }
}

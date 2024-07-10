// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryshop/models/category_model.dart';
import 'package:groceryshop/pages/categories_detail_pages.dart';

class CategoriesPages extends StatefulWidget {
  const CategoriesPages({super.key});

  @override
  State<CategoriesPages> createState() => _CategoriesPagesState();
}

class _CategoriesPagesState extends State<CategoriesPages> {
  TextEditingController editingController = TextEditingController();
  List<CategoryItem> items = CategoryItem.getCategory();
  List<CategoryItem> filteredItems = [];

  @override
  void initState() {
    filteredItems.addAll(items);
    super.initState();
  }

  void filteredSearchResult(String query) {
    List<CategoryItem> dummySearchList = [];
    dummySearchList.addAll(items);
    if (query.isNotEmpty) {
      List<CategoryItem> dummyListData = [];
      dummySearchList.forEach((item) {
        if (item.title.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });

      setState(() {
        filteredItems.clear();
        filteredItems.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        filteredItems.clear();
        filteredItems.addAll(items);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Container(
            width: 6.0,
            height: 12.0,
            child: const Icon(Icons.arrow_back_ios, size: 24.0),
          ),
        ),
        backgroundColor: const Color(0xffF6F5F5),
        scrolledUnderElevation: 0,
      ),
      backgroundColor: const Color(0xffF6F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Color(0xff2D0C57),
              ),
            ),
            const SizedBox(height: 27),
            TextField(
              controller: editingController,
              onChanged: (value) {
                filteredSearchResult(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 22,
                    right: 16,
                    top: 12,
                    bottom: 12,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  right: 22,
                  top: 12,
                  bottom: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            _FoodCategories(items),
          ],
        ),
      ),
    );
  }

  Expanded _FoodCategories(List<CategoryItem> items) {
    return Expanded(
      child: Container(
        color: const Color(0xffF6F5F5),
        child: ListView.builder(
          itemCount: (items.length + 1) ~/ 2,
          itemBuilder: (context, index) {
            final leftItem = items[index * 2];
            final rightItem =
                (index * 2 + 1 < items.length) ? items[index * 2 + 1] : null;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              CategoryDetailPage(item: leftItem),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 166,
                        height: 211,
                        color: Colors.white,
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            leftItem.image,
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                leftItem.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                leftItem.count,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9586A8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (rightItem != null)
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                CategoryDetailPage(item: rightItem),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.white,
                          width: 166,
                          height: 211,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              rightItem.image,
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  rightItem.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  rightItem.count,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff9586A8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  else
                    const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final CategoryItem category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: category.image, // Display image
            ),
          ),
          Text(
            category.title, // Display title
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            category.count, // Display count
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

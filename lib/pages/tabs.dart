// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryshop/pages/categories_pages.dart';
import 'package:groceryshop/pages/checkout_page.dart';
import 'package:groceryshop/pages/profile_page.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          CategoriesPages(),
          CheckoutPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/grid.svg',
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/shopping-cart.svg',
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
              ),
            ),
          ],
          labelColor: Color(0xff7203FF).withOpacity(0.5),
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Color(0xff7203FF).withOpacity(0.5),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final String title;

  NextPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

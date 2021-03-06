import 'package:animation_routes_riverpod_divizion/screens/curriculum.dart';
import 'package:animation_routes_riverpod_divizion/share/style.dart';
import 'package:flutter/material.dart';
import 'rest_api_example.dart';
import 'contacts.dart';

class TabScreens extends StatelessWidget {
  static List<Widget> pages = [
    Curriculum(),
    ProductPage(),
    Contacts(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: AppColors.backgroundFadedColor,
          body: TabBarView(
            children: pages,
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundFadedColor,
            ),
            child: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.home,
                )),
                Tab(
                    icon: Icon(
                  Icons.add_shopping_cart_outlined,
                )),
                Tab(
                    icon: Icon(
                  Icons.contact_phone_outlined,
                )),
              ],
              unselectedLabelColor: AppColors.accentColor,
            ),
          ),
        ));
  }
}

import 'package:animation_routes_riverpod_divizion/screens/curriculum.dart';
import 'package:flutter/material.dart';
import 'why.dart';
import 'contacts.dart';

class TabScreens extends StatelessWidget {
  @override
  List<Widget> pages = [
    Curriculum(),
    Why(),
    Contacts(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: TabBarView(
            children: pages,
          ),
          bottomNavigationBar: Container(
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
              unselectedLabelColor: Colors.purple,
            ),
          ),
        ));
  }
}

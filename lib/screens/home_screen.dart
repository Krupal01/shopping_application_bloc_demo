import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/screens/details_screen.dart';
import 'package:shopping_application_bloc_demo/widgets/app_bar.dart';
import 'package:shopping_application_bloc_demo/widgets/bottom_nav_bar.dart';
import 'package:shopping_application_bloc_demo/widgets/chips.dart';
import 'package:shopping_application_bloc_demo/widgets/drawer.dart';
import 'package:shopping_application_bloc_demo/widgets/search_bar.dart';
import 'package:shopping_application_bloc_demo/widgets/shopping_item.dart';
import 'package:shopping_application_bloc_demo/widgets/spacer.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "Discover",
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu_rounded),
          ),
        ),
      ),
      drawer: const MainDrawer(),
      bottomNavigationBar: MainBottomNavbar(onTabChange: () {}),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            MainSearchBar(onChange: (text) {}),
            SizedBox(
              width: double.infinity,
              height: 30.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return MainChip(
                    text: index.toString(),
                    onTap: () {},
                  );
                }),
              ),
            ),
            Space(),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                ),
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return ShoppingItem(
                    imageUrl: "",
                    onItemTap: () {
                      Navigator.pushNamed(context, DetailsScreen.route);
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

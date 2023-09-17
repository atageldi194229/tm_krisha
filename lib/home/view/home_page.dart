import 'package:flutter/material.dart';
import 'package:tm_krisha/about_us/about_us.dart';
import 'package:tm_krisha/categories/categories.dart';
import 'package:tm_krisha/home/home.dart';
import 'package:tm_krisha/item_card/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

  static MaterialPageRoute<void> route() => MaterialPageRoute<void>(builder: (_) => const HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "tm_krisha",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: "ru",
                  child: Text("Ru", style: TextStyle(color: Colors.blue)),
                ),
                DropdownMenuItem(
                  value: "tm",
                  child: Text("Tm", style: TextStyle(color: Colors.blue)),
                ),
              ],
              onChanged: (_) {},
              value: "ru",
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBottomBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MenuListWidget(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Горячие предложения недвижимости в", style: TextStyle(fontSize: 20.0)),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 15,
              separatorBuilder: (context, index) => const SizedBox(height: 10.0),
              itemBuilder: (context, index) => const ItemCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // const Divider(height: 1),
        ListTile(
          tileColor: Colors.white,
          onTap: () {
            Navigator.of(context).push(CategoriesPage.route(categoryType: CategoryType.sell));
          },
          leading: const Icon(Icons.home_rounded, color: Colors.grey),
          title: const Text("Купить"),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("23 589"),
              Icon(Icons.navigate_next_rounded, color: Colors.grey),
            ],
          ),
        ),
        // const Divider(height: 1),
        ListTile(
          tileColor: Colors.white,
          onTap: () {
            Navigator.of(context).push(CategoriesPage.route(categoryType: CategoryType.rent));
          },
          leading: const Icon(Icons.calendar_month_rounded, color: Colors.grey),
          title: const Text("Арендовать"),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("223 589"),
              Icon(Icons.navigate_next_rounded, color: Colors.grey),
            ],
          ),
        ),
        // const Divider(height: 1),
        ListTile(
          tileColor: Colors.white,
          onTap: () {},
          leading: const Icon(Icons.article_rounded, color: Colors.grey),
          title: const Text("Новостройки"),
          trailing: const Icon(Icons.navigate_next_rounded, color: Colors.grey),
        ),

        // const Divider(height: 1),
        ListTile(
          tileColor: Colors.white,
          onTap: () {},
          leading: const Icon(Icons.article_rounded, color: Colors.grey),
          title: const Text("Новости"),
          trailing: const Icon(Icons.navigate_next_rounded, color: Colors.grey),
        ),
        // const Divider(height: 1),
        ListTile(
          tileColor: Colors.white,
          onTap: () {
            Navigator.of(context).push(AboutUsPage.route());
          },
          leading: const Icon(Icons.more, color: Colors.grey),
          title: const Text("О нас"),
          trailing: const Icon(Icons.navigate_next_rounded, color: Colors.grey),
        ),
        // const Divider(height: 1),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tm_krisha/about_us/about_us.dart';
import 'package:tm_krisha/categories/categories.dart';

class HomeMenuList extends StatelessWidget {
  const HomeMenuList({super.key});

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

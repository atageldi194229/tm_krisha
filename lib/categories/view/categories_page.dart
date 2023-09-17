import 'package:flutter/material.dart';
import 'dart:math' as math;

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key, this.categoryType = CategoryType.sell});

  static MaterialPageRoute<void> route({
    CategoryType categoryType = CategoryType.sell,
  }) =>
      MaterialPageRoute(
        builder: (_) => CategoriesPage(categoryType: categoryType),
      );

  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    return CategoriesView(categoryType: categoryType);
  }
}

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.categoryType});

  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    final categoriesForSell = [
      "квартиру",
      "дом",
      "дачу",
      "участок",
      "коммерческую недвижимость",
      "бизнес",
      "промбазы и заводы",
      "прочую недвижимость",
    ];

    final categoriesForRent = [
      "квартиру",
      "дом",
      "комнату",
      "дачу",
      "коммерческую недвижимость",
      "промбазы и заводы",
      "прочую недвижимость",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: DefaultTabController(
        initialIndex: categoryType == CategoryType.rent ? 1 : 0,
        length: 2,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Купить'),
                Tab(text: 'Арендовать'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: categoriesForSell.length,
                    itemBuilder: (_, index) => ListTile(
                      onTap: () {},
                      tileColor: Colors.white,
                      title: Text(categoriesForSell[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(math.Random().nextInt(300000).toString()),
                          const Icon(Icons.navigate_next_rounded, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: categoriesForRent.length,
                    itemBuilder: (_, index) => ListTile(
                      onTap: () {},
                      tileColor: Colors.white,
                      title: Text(categoriesForRent[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(math.Random().nextInt(30000).toString()),
                          const Icon(Icons.navigate_next_rounded, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum CategoryType {
  sell,
  rent,
}

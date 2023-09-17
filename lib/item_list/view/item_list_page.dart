import 'package:flutter/material.dart';
import 'package:tm_krisha/item_card/item_card.dart';

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key, required this.title});

  final String title;

  static MaterialPageRoute<void> route({required String title}) => MaterialPageRoute(builder: (_) => ItemListPage(title: title));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text(title),
          ),
          SliverList.separated(
            itemCount: 15,
            itemBuilder: (context, index) {
              return const ItemCard();
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10.0),
          ),
        ],
      ),
    );
  }
}

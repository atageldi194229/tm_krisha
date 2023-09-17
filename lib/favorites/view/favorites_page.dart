import 'package:flutter/material.dart';
import 'package:tm_krisha/item_card/item_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          // pinned: true,
          floating: true,
          title: Text("Избранное"),
        ),
        SliverList.separated(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ItemCard();
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10.0),
        ),
      ],
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tm_krisha/home/home.dart';
import 'package:tm_krisha/item_card/item_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.orangeAccent.withOpacity(0.2),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: SizedBox(),
          ),
          floating: true,
          title: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const Text(
              "tm_krisha",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeMenuList(),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Горячие предложения", style: TextStyle(fontSize: 20.0)),
              ),
            ],
          ),
        ),
        SliverList.separated(
          itemCount: 15,
          itemBuilder: (context, index) => const ItemCard(),
          separatorBuilder: (context, index) => const SizedBox(height: 10.0),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tm_krisha/coming_soon/coming_soon.dart';
import 'package:tm_krisha/favorites/favorites.dart';
import 'package:tm_krisha/home/home.dart';
import 'package:tm_krisha/navigation/navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((HomeCubit cubit) => cubit.state.tabIndex);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      bottomNavigationBar: BottomNavBar(
        currentIndex: selectedTab,
        onTap: (value) => context.read<HomeCubit>().setTab(value),
      ),
      body: IndexedStack(
        index: selectedTab,
        children: const [
          HomeContent(),
          FavoritesPage(),
          ComingSoon(),
          ComingSoon(),
          ComingSoon(),
        ],
      ),
    );
  }
}

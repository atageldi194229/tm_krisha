import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final ValueSetter<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      type: BottomNavigationBarType.fixed,
      // fixedColor: Theme.of(context).colorScheme.primary,
      // fixedColor: Theme.of(context).colorScheme.inversePrimary,
      unselectedItemColor: Colors.grey[500],
      showUnselectedLabels: true,
      // useLegacyColorScheme: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Дом"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded), label: "Избранное"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: "Подать"),
        BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: "Сообщения"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded), label: "Кабинет"),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}

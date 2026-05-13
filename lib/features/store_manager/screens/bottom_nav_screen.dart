import 'package:bazarflow/features/store_manager/screens/home_screen.dart';
import 'package:bazarflow/features/store_manager/screens/inventory_screen.dart';
import 'package:bazarflow/features/store_manager/screens/orders_screen.dart';
import 'package:bazarflow/features/store_manager/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/bottom_navigation_bar/navprovider.dart';

class bottomNavScreen extends ConsumerWidget {
  const bottomNavScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    final List<Widget> pages = const [
     sellerHomeScreen(),
      ordersScreen(),
      inventoryScreen(),
      profileScreen(),
    ];

    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal.shade100,
        currentIndex: selectedIndex,
        onTap: (index) {

          ref.read(selectedIndexProvider.notifier)
              .state = index;
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),      // optional custom active icon
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.my_library_books_outlined

            ),
            activeIcon: Icon(
                Icons.my_library_books
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined),
            activeIcon: Icon(Icons.inventory_2),
            label: 'Inventory',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
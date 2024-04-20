import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kitchenwise/u.dart';

class KitchenwiseNavBar extends StatelessWidget {
  const KitchenwiseNavBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goOtherTab(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.tColor3,
        onDestinationSelected: (int index) {
          _goOtherTab(index);
        },
        selectedIndex: navigationShell.currentIndex,
        elevation: 0.0,
        indicatorColor: Colors.transparent,
        destinations:const [
          NavigationDestination(
            
            icon:  Icon(Icons.inventory),
            label: 'Inventory',
            
            selectedIcon: Icon(
              Icons.inventory,
              color: AppColors.tColor4,
            ),
          ),
          NavigationDestination(
            icon:  Icon(Icons.home),
            label: 'Home',
            selectedIcon: Icon(
              Icons.home,
              color: AppColors.tColor4,
            ),
          ),
          NavigationDestination(
            icon:  Icon(Icons.person),
            label: 'Profile',
            selectedIcon: Icon(
              Icons.person,
               color: AppColors.tColor4,
            ),
          ),
        ],
      ),
    );
  }
}

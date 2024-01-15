import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet/src/features/auth/application/auth_notifier.dart';
import 'package:money_magnet/src/features/home/presentation/home_fragment.dart';
import 'package:money_magnet/src/features/pocket/presentation/page/pocket_fragment.dart';
import 'package:money_magnet/src/routes/app_router.dart';
import 'package:money_magnet/src/routes/app_router.gr.dart';

import '../../auth/presentation/provider/providers.dart';

@RoutePage()
class NavigationPage extends ConsumerStatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<NavigationPage> {
  int _selectedIndex = 0;
  final _screen = [
    const HomeFragment(),
    const PocketFragment(),
    const Center(child: Text("Search")),
    const Center(child: Text("Profile")),
  ];

  @override
  void initState() {
    ref.read(authNotifierProvider.notifier).checkAndUpdateAuthStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.getPocket,
                  text: 'Pockets',
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

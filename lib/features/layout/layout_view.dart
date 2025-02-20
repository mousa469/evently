import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/features/layout/create_event/presentation/views/create_event_view.dart';
import 'package:evently/features/layout/home/presentation/views/home_view.dart';
import 'package:evently/features/layout/love/presentation/views/love_view.dart';
import 'package:evently/features/layout/map/presentation/views/map_view.dart';
import 'package:evently/features/layout/profile/presentation/views/profile_view.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});
  static const String id = "/layout";

  @override
  State<LayoutView> createState() => _HomeViewState();
}


class _HomeViewState extends State<LayoutView> {
  List<Widget> tabs = [
    HomeView(),
    MapView(),
    LoveView(),
    ProfileView(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(CreateEventView.id);
        },
        shape: CircleBorder(side: BorderSide(color: AppColors.white, width: 5)),
        backgroundColor: AppColors.kPrimaryColor,
        elevation: 0,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.kPrimaryColor,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.white,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          selectedIconTheme: IconThemeData(color: AppColors.white),
          items: [
            BottomNavigationBarItem(
              icon: Icon(selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: S.of(context).home,
            ),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 1
                    ? Icons.location_on
                    : Icons.location_on_outlined),
                label: S.of(context).map),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 2
                    ? Icons.favorite
                    : Icons.favorite_border),
                label: S.of(context).love),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 3
                    ? Icons.person
                    : Icons.person_outline_sharp),
                label: S.of(context).profile),
          ]),
      body: SafeArea(child: tabs[selectedIndex]),
    );
  }
}

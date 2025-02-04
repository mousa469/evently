import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/features/layout/create_event/presentation/views/create_event_view.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String id = "/homeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 1
                    ? Icons.location_on
                    : Icons.location_on_outlined),
                label: "Map"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 3
                    ? Icons.favorite
                    : Icons.favorite_border),
                label: "Love"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 4
                    ? Icons.person
                    : Icons.person_outline_sharp),
                label: "Profile"),
          ]),
      body: SafeArea(child: const HomeViewBody()),
    );
  }
}

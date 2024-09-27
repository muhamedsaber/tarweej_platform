import 'package:flutter/material.dart';
import 'package:tarweej_platform/core/common_ui/widgets/bottom_nav_bar/app_bottom_navbar.dart';
import 'package:tarweej_platform/features/main_navigation/home/presentation/widgets/home_view/home_view_appbar.dart';

import 'home/presentation/views/home_view_body.dart';
import 'search/presentation/logic/search_photos_view_body.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({super.key});

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (currentIndex == 1) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: AppBottomNavBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  AppBar? _buildAppBar() {
    switch (currentIndex) {
      case 0:
        return null;
      case 1:
      return null;  
      default:
        return AppBar(
          title: const Text("TODO"),
        );
    }
  }

  Widget _buildBody() {
    switch (currentIndex) {
      case 0:
        return const HomeViewBody();
      case 1:
        return const SearchPhotosViewBody();
      default:
        return const Center(
          child: Text("TODO"),
        );
    }
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storage_app/providers/providers.dart';
import 'package:storage_app/screens/cart_screen.dart';
import 'package:storage_app/screens/profile_screen.dart';
import 'package:storage_app/screens/screens.dart';
import 'package:storage_app/themes/app_theme.dart';
import 'package:storage_app/widgets/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
   const MainScreen({super.key});

   final List<Widget>  screensList = const [

    HomeScreen(),
    SearchScreen(),
    HomeScreen(),
    CartScreen(),
    ProfileScreen()

   ];

    // WARNING: 1:19:37
  @override
  Widget build(BuildContext context) {
      return  Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child ) {
          return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: screensList[mainScreenNotifier.screenIndex],
          bottomNavigationBar: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric( horizontal: 10 ),
                  decoration: const BoxDecoration(
                  color: Apptheme.primary,
                  borderRadius: BorderRadius.all(Radius.circular(16)),

                      ),
                      child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      BottomNav(
                          onTap: (){mainScreenNotifier.screenIndex = 0;},
                          icon: mainScreenNotifier.screenIndex == 0
                          ? CommunityMaterialIcons.home
                          : CommunityMaterialIcons.home_outline
                          ),
                      BottomNav(
                          onTap: (){mainScreenNotifier.screenIndex = 1;},
                          icon: mainScreenNotifier.screenIndex == 1
                          ? Ionicons.search
                          : Ionicons.search_outline
                          ),
                      BottomNav(
                          onTap: (){mainScreenNotifier.screenIndex = 2;},
                          icon: mainScreenNotifier.screenIndex == 2
                          ? Ionicons.add
                          : Ionicons.add_outline
                          ),
                      BottomNav(
                          onTap: (){mainScreenNotifier.screenIndex = 3;},
                          icon: mainScreenNotifier.screenIndex == 3
                          ? Ionicons.cart
                          : Ionicons.cart_outline
                          ),
                      BottomNav(
                          onTap: (){mainScreenNotifier.screenIndex = 4;},
                          icon: mainScreenNotifier.screenIndex == 4
                          ? Ionicons.person
                          : Ionicons.person_outline
                          ),
                          ],
                      ),

              ),
     )),

                  );
        }
      );
  }
}

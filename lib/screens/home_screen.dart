import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';
import 'package:storage_app/widgets/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:community_material_icon/community_material_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
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
                  BottomNav(icon: CommunityMaterialIcons.home,onTap: (){},),
                  BottomNav(icon: Ionicons.search,onTap: (){},),
                  BottomNav(icon: Ionicons.add,onTap: (){},),
                  BottomNav(icon: Ionicons.cart,onTap: (){},),
                  BottomNav(icon: Ionicons.person,onTap: (){},),
                  ],
                  ),

          ),
     )),
              body: Center(
              child: Text(
                  "MainScreen",
                  style: Apptheme.appstyle(40, Apptheme.primary, FontWeight.bold),
              ),
                  ),
              );
  }
}

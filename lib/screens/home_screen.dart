import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: Center(
              child: Text('This is home', style: Apptheme.appstyle(40 , Apptheme.primary, FontWeight.bold),),
                  ),
              );
  }
}

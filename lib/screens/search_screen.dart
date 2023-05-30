import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: Center(
              child: Text('This is search', style: Apptheme.appstyle(40 , Apptheme.primary, FontWeight.bold),),
                  ),
              );
  }
}

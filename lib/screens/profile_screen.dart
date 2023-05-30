

import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: Center(
              child: Text('This is profile', style: Apptheme.appstyle(40 , Apptheme.primary, FontWeight.bold),),
                  ),
              );
  }
}

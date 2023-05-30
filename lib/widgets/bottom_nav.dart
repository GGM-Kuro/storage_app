import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key, this.onTap, this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
      child: SizedBox(
      height: 36,
      width: 36,
      child: Icon(icon, color: Apptheme.secondary,),


      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:storage_app/themes/app_theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
              body: Center(
              child: Text('This is cart', style: Apptheme.appstyle(40 , Apptheme.primary, FontWeight.bold),),
                  ),
              );
  }
}

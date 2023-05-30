import 'package:flutter/material.dart';
import 'package:storage_app/router/app_routes.dart';
import 'package:storage_app/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
		debugShowCheckedModeBanner: false,
      title: 'Storage_app',
      theme: Apptheme.lightTheme,
		initialRoute: AppRoutes.initialRoute,
		routes: AppRoutes.getAppRoutes(),
		onGenerateRoute:  AppRoutes.onGenerateRoute,
		);
  }
}

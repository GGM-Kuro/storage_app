import 'package:flutter/material.dart';
import 'package:storage_app/providers/providers.dart';
import 'package:storage_app/screens/screens.dart';
import 'package:storage_app/themes/app_theme.dart';
import 'package:provider/provider.dart';

void main(){
	runApp(MultiProvider(
				providers: [
				ChangeNotifierProvider(create: ( context ) => MainScreenNotifier())
				],
		child: const MyApp()
	));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
		debugShowCheckedModeBanner: false,
      title: 'Storage_app',
      theme: Apptheme.lightTheme,
		home: MainScreen(),
		);
  }
}

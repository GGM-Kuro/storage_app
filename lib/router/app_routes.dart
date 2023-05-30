import 'package:flutter/material.dart';
import 'package:storage_app/models/models.dart';
import 'package:storage_app/screens/screens.dart';


class AppRoutes {
    static const initialRoute = 'home';

    static final menuOption = <MenuOption>[

    ];

    static Map<String, Widget Function(BuildContext)> getAppRoutes(){
        Map<String, Widget Function(BuildContext)> appRoutes ={};

        appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (var option in menuOption ) {
      appRoutes.addAll({option.route:(BuildContext context) => option.screen });
    }

    return appRoutes;

    }

    static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(
            builder: (context) => const AlertScreen(),
        );
    }

}

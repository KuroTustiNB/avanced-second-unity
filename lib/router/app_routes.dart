import 'package:flutter/material.dart';
import 'package:avanced/Models/models.dart';
import 'package:avanced/screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption('card', Icons.abc_rounded, 'Card screen', const CardScreen()),
    MenuOption('alert',Icons.abc_rounded , 'Alert screen', const AlertScreen()),
    MenuOption('animation', Icons.abc_rounded, 'Animation screen', const AnimationScreen()),
    MenuOption('list2', Icons.abc_rounded, 'Listview 2', const ListView2Screen()),
    MenuOption('list1', Icons.abc_rounded, 'Listview', const ListViewScreen()),
  ];

  static Map<String,Widget Function(BuildContext)> getAppRoutes(){
    Map<String,Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({
      'home': (BuildContext context) =>  HomeScreen()
  });

    for(final option in menuOptions){
      appRoutes.addAll({
        option.route:(BuildContext context) => option.screen
      });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoutes(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
      );
  }
}



import 'package:avanced/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final MenuOption = AppRoutes.menuOptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(MenuOption[index].icon),
                  title: Text(MenuOption[index].name),
                  onTap: () {
                    //final route = MaterialPageRoute(builder: (context) => const ListView2Screen());
                    //Navigator.pushReplacement(context, route);
                    Navigator.pushNamed(context, MenuOption[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: MenuOption.length));
  }
}

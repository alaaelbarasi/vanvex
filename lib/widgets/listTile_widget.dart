import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/market_screen.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.navigatorScreen,
      required this.iconName})
      : super(key: key);
  final String title;
  final String subtitle;
  final VoidCallback navigatorScreen;
  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconName,
        color: Colors.blue.shade400,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.blue.shade500),
        textScaleFactor: 1.5,
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.blue.shade500),
      ),
      selected: true,
      onTap: () {
        navigatorScreen();
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => navigatorScreen(),
        // ));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

import '../screens/market_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/shipping_screen.dart';
import 'listTile_widget.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue.shade400),
            accountName: const Text(
              "user name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: const Text(
              "email@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ));
              },
              child: CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.blue.shade700,
                child: const ProfilePicture(
                  name: 'User Name',
                  radius: 31,
                  fontsize: 21,
                ),
              ),
            ), //For Image Asset
          ),
          ListTileWidget(
            title: 'Market',
            subtitle: 'To view market details',
            navigatorScreen: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MarketScreen(),
              ));
            },
            iconName: Icons.store,
          ),
          ListTileWidget(
            title: 'Shipping',
            subtitle: 'To view shippin details',
            navigatorScreen: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ShippingScreen(),
              ));
            },
            iconName: Icons.local_shipping,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log out ..",
                    style: TextStyle(color: Colors.blue.shade700),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

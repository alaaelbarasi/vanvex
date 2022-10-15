import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:provider/provider.dart';

import '../provider/user_provider.dart';
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
  late final userId;
  void initState() {
    Provider.of<UserProvider>(context, listen: false).getUserFromApi(userId: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(builder: (context, provider, _) {
      return provider.isBusy
          ? const Center(child: CircularProgressIndicator())
          : Drawer(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue.shade400),
                    accountName: Text(
                      provider.user?.name ?? 'User name',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    accountEmail: Text(
                      provider.user?.email ?? 'e@email.com',
                      style: const TextStyle(
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
                        backgroundColor: Color.fromARGB(69, 227, 242, 253),
                        child: ProfilePicture(
                          name: provider.user?.name ?? 'User name',
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
    });
  }
}

import 'package:flutter/material.dart';
import 'package:vanvex/provider/shipment_provider.dart';
import 'package:vanvex/provider/store_provider.dart';
import 'package:vanvex/provider/user_provider.dart';
import 'package:vanvex/screens/home_screen.dart';
import 'package:vanvex/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((_) => UserProvider()),
        ),
        ChangeNotifierProvider(
          create: ((_) => ShipmentProvider()),
        ),
        ChangeNotifierProvider(
          create: ((_) => StoreProvider()),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Deliveryify',
          theme: ThemeData(
            iconTheme: const IconThemeData(color: Colors.blue),
            primaryIconTheme: IconThemeData(color: Colors.blue.shade700),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            // '/home': (context) => const VistorScreen(),
            '/home': (context) => const HomeScreen(),
          }),
    );
  }
}

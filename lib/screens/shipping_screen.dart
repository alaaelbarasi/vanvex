import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vanvex/screens/shipping_prices.dart';

import '../widgets/appBar_widget.dart';
import 'add_ship.dart';
import 'display_ship.dart';

class ShippingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: const Text('Shipment'),
          bottom: const TabBar(
            tabs: [
              Tab(
                  icon: Icon(Icons.local_shipping_rounded),
                  text: "Display Ships"),
              Tab(icon: Icon(Icons.add_circle), text: "Add New Ship"),
              Tab(icon: Icon(Icons.attach_money), text: "View Prices")
            ],
          ),
        ),
        body: const TabBarView(
          children: [DisplayShip(), AddShip(), ShippingPrices()],
        ),
      ),
    );
  }
}

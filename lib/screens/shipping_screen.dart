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
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.blue),
          title: Text(
            'Shipment',
            style: TextStyle(color: Colors.blue.shade700),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.blue.shade900,
            indicatorColor: Colors.blue.shade50,
            tabs: [
              Tab(
                  icon: Icon(
                    Icons.local_shipping_rounded,
                    color: Colors.blue.shade700,
                  ),
                  text: "Display Shipments"),
              Tab(
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.blue.shade700,
                  ),
                  text: "Add Shipment"),
              Tab(
                icon: Icon(
                  Icons.attach_money,
                  color: Colors.blue.shade700,
                ),
                text: "View Prices",
                // TextStyle(color: Colors.blue.shade700),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DisplayShip(),
            AddShip(),
            ShippingPrices(),
          ],
        ),
      ),
    );
  }
}

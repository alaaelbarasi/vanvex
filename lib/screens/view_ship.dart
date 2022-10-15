import 'package:flutter/material.dart';

import '../model/shipment.dart';
import '../widgets/appBar_widget.dart';

class ViewShip extends StatefulWidget {
  ViewShip({super.key, required this.response});
  ShipmentModel response;
  @override
  State<ViewShip> createState() => _ViewShipState();
}

class _ViewShipState extends State<ViewShip> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(screen_name: "View Shipment"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 25,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.blue.shade300,
                ),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.local_shipping,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shipment Details",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.desc,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Shipment Description',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.numberOfItems,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Number Of Items',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.price,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Cost',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.state,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Shipment State',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 25,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.blue.shade300,
                ),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Recevier Details",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.customerName,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Customer Name',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.customerPhone,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Customer Phone',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: widget.response.customerAddress,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Customer Address',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: "Talya Shop",
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Store Name',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
            ],
          ),
        ),
      ),
      //   },
      // ),
    );
  }
}

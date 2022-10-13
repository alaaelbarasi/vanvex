import 'package:flutter/material.dart';

import '../widgets/appBar_widget.dart';

class ViewShip extends StatefulWidget {
  const ViewShip({super.key});

  @override
  State<ViewShip> createState() => _ViewShipState();
}

class _ViewShipState extends State<ViewShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(screen_name: "View Ship"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
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
                      "Ship Details",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                readOnly: true,
                initialValue: "White Bag",
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Ship Description',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                initialValue: "1",
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
                initialValue: "100 LD",
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
                initialValue: "Shipped",
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Ship State',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                readOnly: true,
                initialValue: "Sara Ahmed",
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
                initialValue: "09373883",
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
                initialValue: "Hay-Aldollar",
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
    );
  }
}

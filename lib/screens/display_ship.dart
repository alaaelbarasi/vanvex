import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vanvex/screens/shipping_screen.dart';

import '../provider/shipment_provider.dart';
import '../services/ship_api.dart';

class DisplayShip extends StatefulWidget {
  const DisplayShip({super.key});

  @override
  State<DisplayShip> createState() => _DisplayShipState();
}

class _DisplayShipState extends State<DisplayShip> {
  @override
  void initState() {
    super.initState();
    Provider.of<ShipmentProvider>(context, listen: false).getShipmentsApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ShipmentProvider>(builder: (context, provider, _) {
        return provider.isBusy
            ? const Center(child: CircularProgressIndicator())
            : Stack(children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Display Shipments",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue.shade600,
                              fontFamily: GoogleFonts.abel().fontFamily),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columns: <DataColumn>[
                              const DataColumn(
                                label: Text('id',
                                    style: TextStyle(color: Colors.pink)),
                              ),
                              DataColumn(
                                label: Text('Code',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              DataColumn(
                                label: Text('Description',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              DataColumn(
                                label: Text('Customer Name',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              DataColumn(
                                label: Text('Customer Phone',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              DataColumn(
                                label: Text('Customer City',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              DataColumn(
                                label: Text('Price',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              DataColumn(
                                label: Text('Ship State',
                                    style:
                                        TextStyle(color: Colors.blue.shade700)),
                              ),
                              const DataColumn(label: Text('')),
                            ],
                            rows: <DataRow>[
                              ...provider.ListOfshipments.map((shipment) =>
                                  DataRow(
                                    cells: <DataCell>[
                                      DataCell(Text('${shipment.id}')),
                                      DataCell(Text(shipment.code)),
                                      DataCell(Text(shipment.desc)),
                                      DataCell(Text(shipment.customerName)),
                                      DataCell(Text(shipment.customerPhone)),
                                      DataCell(Text(shipment.customerCity)),
                                      DataCell(Text('${shipment.price} LD')),
                                      DataCell(Text(shipment.state)),
                                      DataCell(IconButton(
                                        onPressed: () async {
                                          final response =
                                              await ShipApi().deleteShipment(
                                            shipId: shipment.id,
                                          );
                                          if (response == true) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    'Shipment Was Deleted Successfully'),
                                              ),
                                            );
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ShippingScreen(),
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    'Deletion process has an error'),
                                              ),
                                            );
                                          }
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: Colors.red,
                                      )),
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]);
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appBar_widget.dart';

class ShippingPrices extends StatefulWidget {
  const ShippingPrices({super.key});

  @override
  State<ShippingPrices> createState() => _ShippingPricesState();
}

class _ShippingPricesState extends State<ShippingPrices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const AppBarWidget(
      //   screen_name: "Shipping Prices",
      // ),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0.1,
            right: 0.1,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                "assets/images/imageedit_13_5185684322.png",
                // height: 400,
                // width: 400,
              ),
            ),
          ),
          Positioned(
            // top: 20,
            left: 5,
            right: 5,
            bottom: 250,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Text(
                    "Shipping Prices",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue.shade600,
                        fontFamily: GoogleFonts.abel().fontFamily),
                  ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        color: Colors.white70,
                        child: DataTable(
                          columns: <DataColumn>[
                            const DataColumn(
                              label: Text(
                                'id',
                                style: TextStyle(color: Colors.pink),
                              ),
                            ),
                            DataColumn(
                              label: Text('City',
                                  style: TextStyle(color: Colors.blue.shade700)),
                            ),
                            DataColumn(
                              label: Text('ZIP code',
                                  style: TextStyle(color: Colors.blue.shade700)),
                            ),
                            DataColumn(
                              label: Text('Price',
                                  style: TextStyle(color: Colors.blue.shade700)),
                            ),
                            DataColumn(
                              label: Text('Shipping Duration',
                                  style: TextStyle(color: Colors.blue.shade700)),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Text('1', style: TextStyle(color: Colors.pink)),
                                ),
                                DataCell(Text('Tripoli')),
                                DataCell(Text('TIP')),
                                DataCell(Text('30 LD')),
                                DataCell(Text('2-3 Days')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('2',
                                    style: TextStyle(color: Colors.pink))),
                                DataCell(Text('Misrata')),
                                DataCell(Text('MSR')),
                                DataCell(Text('25 LD')),
                                DataCell(Text('1 Day')),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('3',
                                    style: TextStyle(color: Colors.pink))),
                                DataCell(Text('Benghazi')),
                                DataCell(Text('BEN')),
                                DataCell(Text('15 LD')),
                                DataCell(Text('3-4 Days')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

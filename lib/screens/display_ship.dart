import 'package:flutter/material.dart';

class DisplayShip extends StatefulWidget {
  const DisplayShip({super.key});

  @override
  State<DisplayShip> createState() => _DisplayShipState();
}

class _DisplayShipState extends State<DisplayShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Display Shippings',
                style: TextStyle(fontSize: 20, color: Colors.blue.shade700),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns:  <DataColumn>[
                    DataColumn(
                      label: Text('id', style: TextStyle(color: Colors.pink)),
                    ),
                    DataColumn(
                      label: Text('Code', style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(
                      label: Text('Description',
                          style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(
                      label: Text('Customer Name',
                          style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(
                      label: Text('Customer Phone',
                          style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(
                      label: Text('Customer City',
                          style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(
                      label:
                          Text('Price', style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(
                      label: Text('Ship State',
                          style: TextStyle(color: Colors.blue.shade700)),
                    ),
                    DataColumn(label: Text('')),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('1', style: TextStyle(color: Colors.pink))),
                        DataCell(Text('2343')),
                        DataCell(Text('shoes')),
                        DataCell(Text('Ali')),
                        DataCell(Text('091111222')),
                        DataCell(Text('Tripoli')),
                        DataCell(Text('210 LD')),
                        DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('2', style: TextStyle(color: Colors.pink))),
                        DataCell(Text('2344')),
                        DataCell(Text('T-shirt')),
                        DataCell(Text('Sara')),
                        DataCell(Text('091111222')),
                        DataCell(Text('Tripoli')),
                        DataCell(Text('150 LD')),
                        DataCell(Text('Cancled')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('3', style: TextStyle(color: Colors.pink))),
                        DataCell(Text('2345')),
                        DataCell(Text('bag')),
                        DataCell(Text('Ebthal')),
                        DataCell(Text('091111442')),
                        DataCell(Text('Benghazi')),
                        DataCell(Text('100 LD')),
                        DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        const DataCell(
                            Text('4', style: TextStyle(color: Colors.pink))),
                        const DataCell(Text('2345')),
                        const DataCell(Text('T-shirt')),
                        const DataCell(Text('Arwa')),
                        const DataCell(Text('091111442')),
                        const DataCell(Text('Benghazi')),
                        const DataCell(Text('300 LD')),
                        const DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        const DataCell(
                            Text('5', style: TextStyle(color: Colors.pink))),
                        const DataCell(Text('2345')),
                        const DataCell(Text('bag')),
                        const DataCell(Text('Arwa')),
                        const DataCell(Text('091111442')),
                        const DataCell(Text('Benghazi')),
                        const DataCell(Text('700 LD')),
                        const DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        const DataCell(
                            Text('6', style: TextStyle(color: Colors.pink))),
                        const DataCell(Text('2345')),
                        const DataCell(Text('T-shirt')),
                        const DataCell(Text('Ebthal')),
                        const DataCell(Text('091111442')),
                        const DataCell(Text('Benghazi')),
                        const DataCell(Text('160 LD')),
                        const DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        const DataCell(
                            Text('7', style: TextStyle(color: Colors.pink))),
                        const DataCell(Text('2345')),
                        const DataCell(Text('bag')),
                        const DataCell(Text('Saly')),
                        const DataCell(Text('091111442')),
                        const DataCell(Text('Benghazi')),
                        const DataCell(Text('100 LD')),
                        const DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        const DataCell(
                            Text('8', style: TextStyle(color: Colors.pink))),
                        const DataCell(Text('2345')),
                        const DataCell(Text('Sandal')),
                        const DataCell(Text('Arwa')),
                        const DataCell(Text('091111442')),
                        const DataCell(Text('Benghazi')),
                        const DataCell(Text('100 LD')),
                        const DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('9', style: TextStyle(color: Colors.pink))),
                        DataCell(Text('2345')),
                        DataCell(Text('bag')),
                        DataCell(Text('Saly')),
                        DataCell(Text('091111442')),
                        DataCell(Text('Benghazi')),
                        DataCell(Text('100 LD')),
                        DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('10', style: TextStyle(color: Colors.pink))),
                        DataCell(Text('2345')),
                        DataCell(Text('Sandal')),
                        DataCell(Text('Arwa')),
                        DataCell(Text('091111442')),
                        DataCell(Text('Benghazi')),
                        DataCell(Text('170 LD')),
                        DataCell(Text('Received')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                      DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('11', style: TextStyle(color: Colors.pink))),
                        DataCell(Text('2344')),
                        DataCell(Text('T-shirt')),
                        DataCell(Text('Sara')),
                        DataCell(Text('091111222')),
                        DataCell(Text('Tripoli')),
                        DataCell(Text('150 LD')),
                        DataCell(Text('Cancled')),
                        DataCell(IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

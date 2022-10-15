import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:vanvex/screens/shipping_screen.dart';

import '../services/ship_api.dart';

class AddShip extends StatefulWidget {
  const AddShip({super.key});

  @override
  State<AddShip> createState() => _AddShipState();
}

class _AddShipState extends State<AddShip> {
  final descController = TextEditingController();
  final priceController = TextEditingController();
  final customerNameController = TextEditingController();
  final customerPhoneController = TextEditingController();
  final addressController = TextEditingController();
  final numberItemsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                height: 10,
              ),
              TextFormField(
                controller: descController,
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
                height: 20,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Number of Items",
                  style: TextStyle(color: Colors.pink, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              NumberInputPrefabbed.roundedButtons(
                scaleHeight: 0.8,
                controller: numberItemsController,
                incDecBgColor: Colors.pink.shade400,
                incIconColor: Colors.white,
                decIconColor: Colors.white,
                max: 50,
                min: 0,
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
                      Icons.money_rounded,
                      color: Colors.white,
                      size: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Financial Details",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: priceController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Shipment Price',
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
                style: TextStyle(color: Colors.blue.shade600),
              ),
              const SizedBox(
                height: 30,
              ),
              TextDropdownFormField(
                options: const ["Cash", "Edfali"],
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Payment Method",
                    labelStyle: TextStyle(color: Colors.pink)),
                dropdownHeight: 120,
              ),
              const SizedBox(
                height: 30,
              ),
              TextDropdownFormField(
                options: const ["Store", "Customer"],
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Shipping Cost On:",
                    labelStyle: TextStyle(color: Colors.pink)),
                dropdownHeight: 120,
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
                height: 10,
              ),
              TextFormField(
                controller: customerNameController,
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
                height: 20,
              ),
              TextFormField(
                controller: customerPhoneController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.phone,
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
                height: 20,
              ),
              TextDropdownFormField(
                options: const ["Benghazi", "Tripoli", "Misrata"],
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Customer City",
                    labelStyle: TextStyle(color: Colors.pink)),
                dropdownHeight: 170,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: addressController,
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
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    final response = await ShipApi().addShip(
                      des: descController.text,
                      code: "1334",
                      noOfItem: numberItemsController.text,
                      customerAdrees: addressController.text,
                      shipPrice: priceController.text,
                      paymentMethod: "cash",
                      custmerPhone: customerPhoneController.text,
                      custemerName: customerNameController.text,
                      customerCity: "Benghazi",
                      costOn: "customer",
                    );
                    if (response == true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Shipment Was Added Successfully'),
                        ),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShippingScreen(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please Enter the Fields'),
                        ),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade700),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(70)),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Add Ship',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

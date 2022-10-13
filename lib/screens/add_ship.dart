import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class AddShip extends StatefulWidget {
  const AddShip({super.key});

  @override
  State<AddShip> createState() => _AddShipState();
}

class _AddShipState extends State<AddShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const AppBarWidget(screen_name: "Add New Ship"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset(
              //     '/Users/rodainaomaer/Desktop/vanvex/assets/images/75-756227_shipping-fast-delivery-icon_thumbnail.png'),
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
              TextFormField(
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
                controller: TextEditingController(),
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
              TextFormField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade600),
                  ),
                  labelText: 'Ship Price',
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
                options: const ["Sender", "Recevier"],
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
              TextFormField(
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
              TextFormField(
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
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const HomeScreen(),
                    //   ),
                    // );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(70)),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Add Ship',
                    style: TextStyle(fontSize: 14),
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

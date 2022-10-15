import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/store_provider.dart';
import '../screens/market_screen.dart';
import '../services/store_api.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  void initState() {
    Provider.of<StoreProvider>(context, listen: false)
        .getStoreFromApi(isInit: true, storeId: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<StoreProvider>(builder: (context, provider, _) {
      return provider.isBusy
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Card(
                child: SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 30, 50, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 30, top: 20),
                          child: Text(
                            "Setting",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.blue.shade700,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: nameController,
                          //  initialValue: provider.store?.email,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Store label",
                            hintText: provider.store?.name,
                          ),
                        ),
                        TextFormField(
                          controller: addressController,
                          // initialValue: provider.store?.email,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Address",
                            hintText: provider.store?.address,
                          ),
                        ),
                        TextFormField(
                          controller: emailController,
                          // initialValue: provider.store?.email,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Email",
                            hintText: provider.store?.email,
                          ),
                        ),
                        TextFormField(
                          controller: phoneController,
                          // initialValue: provider.store?.phone,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Phone",
                            hintText: provider.store?.phone,
                          ),
                        ),

                        // TextFieldMarket(
                        //   labelName: "Store label",
                        //   hint: "Nike",
                        // ),
                        // TextFieldMarket(
                        //   labelName: "Address",
                        //   hint: "Benghazi",
                        // ),
                        // TextFieldMarket(
                        //   labelName: "Phone",
                        //   hint: "09123456789",
                        // ),
                        // TextFieldMarket(
                        //   labelName: "Email",
                        //   hint: "email@email.com",
                        // ),
                        // TextFieldMarket(
                        //   labelName: "Owner",
                        //   hint: "Mohamed",
                        // ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () async {
                                final response = await StoreApi().updateStore(
                                    address: addressController.text,
                                    storeLabel: nameController.text,
                                    storeID: provider.store?.id,
                                    phone: phoneController.text,
                                    email: emailController.text,
                                    owner: "ali");
                                if (response) {
                                  // ignore: use_build_context_synchronously
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Store Details Have Been Updated Successfully'),
                                    ),
                                  );
                                  // ignore: use_build_context_synchronously
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MarketScreen(),
                                    ),
                                  );
                                } else {
                                  // ignore: use_build_context_synchronously
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text('Please Enter the Fields Again'),
                                    ),
                                  );
                                }
                              },
                              child: const Text("Update")),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
    });
  }
}

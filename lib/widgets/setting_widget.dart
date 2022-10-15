import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vanvex/widgets/textfield_market.dart';

import '../provider/store_provider.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  void initState() {
    Provider.of<StoreProvider>(context, listen: false)
        .getStoreFromApi(isInit: true, storeId: 2);
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
                        //Image caused hasSize error when keybiard is raised
                        TextFieldMarket(
                          labelName: "Store label",
                          hint: "Nike",
                        ),
                        TextFieldMarket(
                          labelName: "Address",
                          hint: "Benghazi",
                        ),
                        TextFieldMarket(
                          labelName: "Phone",
                          hint: "09123456789",
                        ),
                        TextFieldMarket(
                          labelName: "Email",
                          hint: "email@email.com",
                        ),
                        TextFieldMarket(
                          labelName: "Owner",
                          hint: "Mohamed",
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {},
                              child: const Text("Submit")),
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

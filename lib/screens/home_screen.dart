import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vanvex/provider/shipment_provider.dart';
import 'package:vanvex/widgets/appBar_widget.dart';
import 'package:vanvex/widgets/carousel_widget.dart';
import 'package:vanvex/widgets/drawer.dart';
import 'package:vanvex/widgets/search_bar_widget.dart';
import 'package:vanvex/widgets/single_ship_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ShipmentProvider>(context, listen: false)
        .getShipmentsApi(isInit: true);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWidget(
        screen_name: "Deliveryfiy",
      ),
      body: Consumer<ShipmentProvider>(builder: (context, provider, _) {
        return provider.isBusy
            ? const Center(child: CircularProgressIndicator())
            : SizedBox(
                height: size.height,
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const CarsouelWidget(),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 65, 20, 5),
                            child: Container(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: provider.ListOfshipments.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return SingleShipWidget(
                                      title:
                                          provider.ListOfshipments[index].desc,
                                      shipCode:
                                          "${"${provider.ListOfshipments[index].code} ${provider.ListOfshipments[index].paymentMethod}"}\n${provider.ListOfshipments[index].customerAddress}");
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            top: size.height / 950,
                            child: const SearchBarWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
      }),
      endDrawer: const DrawerWidget(),
    );
  }
}

import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWidget(
        screen_name: "Deliveryfiy",
      ),
      body: SizedBox(
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
                    child: SizedBox(
                      child: Column(
                        children: const [
                          SingleShipWidget(
                              title: "Title comes here",
                              shipCode: "while ship code comes in here"),
                          SingleShipWidget(
                              title: "Title comes here",
                              shipCode: "while ship code comes in here"),
                          SingleShipWidget(
                              title: "Title comes here",
                              shipCode: "while ship code comes in here"),
                          SingleShipWidget(
                              title: "Title comes here",
                              shipCode: "while ship code comes in here"),
                          SingleShipWidget(
                              title: "Title comes here",
                              shipCode: "while ship code comes in here"),
                          SingleShipWidget(
                              title: "Title comes here",
                              shipCode: "while ship code comes in here"),
                        ],
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
      ),
      endDrawer: const DrawerWidget(),
    );
  }
}

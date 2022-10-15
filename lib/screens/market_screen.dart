import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vanvex/provider/store_provider.dart';
import 'package:vanvex/widgets/appBar_widget.dart';
import 'package:vanvex/widgets/payment_record_widget.dart';
import 'package:vanvex/widgets/setting_widget.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    Provider.of<StoreProvider>(context, listen: false)
        .getStoreFromApi(isInit: true, storeId: 2);
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: const AppBarWidget(
          screen_name: "Store",
        ),
        body: Consumer<StoreProvider>(
          builder: (context, provider, _) {
            return provider.isBusy
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                          child: Container(
                            height: size.height / 11,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.5, // soften the shadow
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              labelColor: Colors.blue.shade900,
                              controller: tabController,
                              tabs: [
                                Tab(
                                    icon: Icon(
                                      Icons.receipt_rounded,
                                      color: Colors.blue.shade400,
                                    ),
                                    text: "Receipt"),
                                Tab(
                                    icon: Icon(
                                      Icons.settings,
                                      color: Colors.blue.shade400,
                                    ),
                                    text: "Setting"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: const [
                              PaymentRecordWidget(),
                              SettingWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vanvex/provider/user_provider.dart';
import 'package:vanvex/widgets/appBar_widget.dart';
import 'package:vanvex/widgets/body_of_profile_details_widget.dart';
import 'package:vanvex/widgets/cover_image_widget.dart';
import 'package:vanvex/widgets/profile_detaile_widget.dart';
import 'package:vanvex/widgets/profile_image_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final userId;
  void initState() {
    super.initState();
    Provider.of<UserProvider>(context, listen: false).getUserFromApi(userId: 1);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final top = height / 6;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(
        screen_name: "Profile",
      ),
      body: Consumer<UserProvider>(builder: (context, provider, _) {
        return provider.isBusy
            ? Center(child: CircularProgressIndicator())
            : SizedBox(
                height: height,
                width: width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                              margin: const EdgeInsets.only(bottom: 70),
                              child: const CoverImageWidget()),
                          Positioned(
                              top: top,
                              child: ProfileImageWidget(
                                userName: provider.user?.name,
                              )),
                        ],
                      ),
                      const Text(
                        "User name",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BodyOfProfileWidget(
                        StoreCode: provider.user?.storeId,
                        userName: provider.user?.name,
                        city: provider.user?.city,
                        email: provider.user?.email,
                        phone: provider.user?.phone,
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}

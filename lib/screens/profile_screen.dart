import 'package:flutter/material.dart';
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
      body: SizedBox(
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
                  Positioned(top: top, child: const ProfileImageWidget()),
                ],
              ),
              const Text(
                "User name",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const BodyOfProfileWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

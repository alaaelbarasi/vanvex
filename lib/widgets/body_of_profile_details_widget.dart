import 'package:flutter/material.dart';
import 'package:vanvex/widgets/profile_detaile_widget.dart';

class BodyOfProfileWidget extends StatelessWidget {
  const BodyOfProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: SizedBox(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ProfileDetailWidgwt(title: "User number", trailing: "000"),
            const ProfileDetailWidgwt(
                title: "Email", trailing: "xxx@email.com"),
            const ProfileDetailWidgwt(
                title: "Phone number", trailing: "+2189100000"),
            const ProfileDetailWidgwt(title: "Account type", trailing: "..."),
            const ProfileDetailWidgwt(title: "Market number", trailing: "000"),
            const ProfileDetailWidgwt(title: "Market name", trailing: "mm"),
            const ProfileDetailWidgwt(title: "Market name", trailing: "mm"),
            const ProfileDetailWidgwt(title: "Market name", trailing: "mm"),
            const ProfileDetailWidgwt(title: "Market name", trailing: "mm"),
            SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffb536DFE),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                child: const Text("data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

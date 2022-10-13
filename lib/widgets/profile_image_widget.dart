import 'package:flutter/material.dart';

import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 60.0,
      backgroundColor: Color.fromARGB(69, 227, 242, 253),
      child: ProfilePicture(
        name: 'User Name',
        // radius: 31,
        radius: 45,
        fontsize: 21,
      ),
    );
  }
}

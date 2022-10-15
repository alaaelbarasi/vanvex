import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoverImageWidget extends StatelessWidget {
  const CoverImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/cover.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      // color: Color.fromARGB(255, 158, 158, 158),
      height: size.height / 4,
    );
  }
}

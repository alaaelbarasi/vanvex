import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vanvex/screens/login_screen.dart';
import 'package:vanvex/screens/sign_up_screen.dart';
import 'package:vanvex/widgets/search_bar_widget.dart';
import '../widgets/appBar_widget.dart';
import 'package:permission_handler/permission_handler.dart';

const LatLng currentLocation = LatLng(32.1166, 20.0666);
// const LatLng currentLocation = LatLng(25.1193, 55.3773);

class VistorScreen extends StatefulWidget {
  const VistorScreen({Key? key}) : super(key: key);
  @override
  State<VistorScreen> createState() => _VistorScreenState();
}

class _VistorScreenState extends State<VistorScreen> {
  late GoogleMapController mapController;
  Map<String, Marker> _marker = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        screen_name: "Welcome",
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: currentLocation,
              zoom: 14,
            ),
            onMapCreated: (controller) {
              mapController = controller;
              addMareker('test', currentLocation);
            },
            markers: _marker.values.toSet(),
          ),
          const SearchBarWidget(),
          Positioned(
            bottom: 12,
            left: MediaQuery.of(context).size.width / 3.5,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text("log in"),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Sign up'),
                )
              ],
            ),
          )
        ],
      ),
      // endDrawer: const DrawerWidget(),
    );
  }

  addMareker(String id, LatLng location) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
    );
    _marker[id] = marker;
    setState(() {});
  }
}

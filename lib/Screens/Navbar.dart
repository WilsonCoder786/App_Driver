import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_driver_app/Screens/Controller/Bottom_Controller.dart';
import 'package:new_driver_app/Screens/HomeScreen.dart';
import 'package:new_driver_app/Screens/Navbar_widget.dart';
import 'package:new_driver_app/Screens/Package.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final BottomController bottomNavController = Get.put(BottomController());
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      key: _key,
      bottomNavigationBar: Obx(
        () => Container(
          height: 100,
          width: 1.sw,
          decoration: const BoxDecoration(
              color: Color(0xff192988),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavBarWidget(
                  controller: bottomNavController,
                  index: 0,
                  imagePath: Icons.car_crash,
                  text: bottomNavController.selectedIndex.value == 0 ? 'Packages' : '',
                ),
                NavBarWidget(
                  controller: bottomNavController,
                  index: 1,
                  imagePath: Icons.location_on,
                  text: bottomNavController.selectedIndex.value == 1 ? "Maps" : "",
                ),
                NavBarWidget(
                  controller: bottomNavController,
                  index: 3,
                  imagePath: Icons.scanner,
                  text: bottomNavController.selectedIndex.value == 3 ? "Scan" : " ",
                ),
                NavBarWidget(
                  controller: bottomNavController,
                  index: 4,
                  imagePath: Icons.earbuds_battery_rounded,
                  text: bottomNavController.selectedIndex.value == 4 ? "Earns" : "",
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() {
        switch (bottomNavController.selectedIndex.value) {
          case 0:
            return PackageScreen();
          case 1:
            return MapScreen();
          case 2:
            return const Center(child: Text('Workspace Screen'));
          case 3:
            return const Center(child: Text('Tutorials Screen'));
          default:
            return Center(child: const Text("Home "));
        }
      }),
    );
  }
}

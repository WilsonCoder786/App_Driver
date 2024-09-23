import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_driver_app/Screens/Controller/Bottom_Controller.dart';

class NavBarWidget extends StatelessWidget {
  final imagePath;
  final String text;

  final BottomController controller;
  final int index;
  final double? width;
  NavBarWidget({
    super.key,
    required this.imagePath,
    required this.text,
    required this.controller,
    required this.index,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: GestureDetector(
        onTap: () => controller.changeIndex(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 25.h,
              height: 25.h,
              child: Icon(imagePath, color: Colors.white),
            ),
            Container(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

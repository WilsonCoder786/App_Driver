import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
                child: Image.network(
                  "https://i.ibb.co/HFt9XPQ/image.png",
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

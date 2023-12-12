import 'package:flutter/material.dart';
import 'package:garduino_dashboard/pages/home/widgets/call_to_action.dart';
import 'package:garduino_dashboard/pages/home/widgets/circle.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({super.key});

  @override
  State<HeadPage> createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CustomCircle(),
      Container(
        margin: const EdgeInsets.only(top: 10,bottom: 10),
        child: const Text(
          "Tom",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      const ProfiAndSearch(),
      Container(
        margin: const EdgeInsets.only(top: 10,bottom: 10),
        child: const Text(
          "Améliorer votre recrutement avec nos services",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
    ]);
  }
}

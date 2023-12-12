import 'package:flutter/material.dart';
import 'package:garduino_dashboard/const.dart';

class MyCustomCard extends StatefulWidget {
  const MyCustomCard(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.icon,
        required this.color,
        required this.rotate});

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final int rotate;

  @override
  State<MyCustomCard> createState() => _MyCustomCardState();
}

class _MyCustomCardState extends State<MyCustomCard> {
  Color iconColor = colorGreen;


  @override
  Widget build(BuildContext context) {

    if (widget.color == colorGreenLighter) {
        iconColor = colorBlue;
      }else {
        iconColor = colorGreen;
    }

    return MaterialButton(
      onPressed: () {},
      color: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.5,
            height: MediaQuery.of(context).size.width / 3,
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Transform.rotate(
                        angle: widget.rotate * 3.14159 / 180,
                        child: Icon(
                          widget.icon,
                          color: iconColor,
                          size: 25,
                        ),
                      ),
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          Positioned(
            top: -10,
            right: -25,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.add_rounded,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

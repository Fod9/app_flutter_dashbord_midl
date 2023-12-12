import 'package:flutter/material.dart';
import './text_image.dart';
import 'package:garduino_dashboard/const.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: LogoTxtImage(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        colorGreen,
                        colorBlue,
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: MaterialButton(
                      shape: CircleBorder(),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: const RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.tune,
                          color: colorGreen,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: MaterialButton(
                    onPressed: () {},
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.settings, color: colorBlue, size: 25),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

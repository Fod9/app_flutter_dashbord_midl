import 'package:flutter/material.dart';
import 'package:garduino_dashboard/const.dart';

class CustomCircle extends StatefulWidget {
  const CustomCircle({super.key});

  @override
  State<CustomCircle> createState() => _CustomCircleState();
}

class _CustomCircleState extends State<CustomCircle> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 180,
            width: 180,
            child: RotatedBox(
              quarterTurns: 2,
              child: CircularProgressIndicator(
                strokeWidth: 7,
                valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.grey.withOpacity(0.3)),
                value: 1,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 180,
            width: 180,
            child: RotatedBox(
              quarterTurns: 2,
              child: CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                strokeWidth: 7,
                valueColor: AlwaysStoppedAnimation<Color>(colorBlue),
                value: 0.3,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SizedBox(
              height: 173,
              width: 173,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo_bg.png'),
              )),
        ),
        const Positioned(
          bottom: 0,
          child: SizedBox(
              height: 30,
              width: 150,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorGreen,
                        colorBlue,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: colorBlue,
                  ),
                  child: Center(
                    child: Text(
                      'COMPLÉTÉ À 100%',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ))),
        ),
        Positioned(
          top: -2,
          right: -20,
          child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              shape: const CircleBorder(),
                child: const Icon(
                  Icons.edit,
                  color: colorGreenLighter,
                  size: 25,
                ),
              ),
            ),
        const Positioned(
          top: 5,
          right: 9,
          child: SizedBox(
            height: 8,
            width: 8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: colorBlue,
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:garduino_dashboard/const.dart';
import 'package:garduino_dashboard/pages/home/widgets/custom_card.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyCustomCard(
              title: "BOOST",
              subtitle: "Mettez votre annonce en avant pendant 24h",
              icon: Icons.rocket_outlined,
              rotate: 45,
              color:
                  colorGreenLighter, // Assurez-vous que 'colorGreen' est bien défini dans 'const.dart'
            ),
            SizedBox(
              width: 20,
            ),
            MyCustomCard(
              title: "Message Instantané",
              subtitle: "N'attendez pas de marcher pour envoyer un message",
              rotate: -45,
              icon: Icons.send_rounded,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child:  Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PREMIUM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.star_border_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Débloquez toutes nos options pour prendre le contrôle",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Bientôt disponible ! ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

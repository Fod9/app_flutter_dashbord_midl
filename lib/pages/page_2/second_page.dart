import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:garduino_dashboard/pages/home/widgets/head_page.dart';
import '../home/widgets/app_bar.dart';
import 'package:garduino_dashboard/pages/home/widgets/bottom_page.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        title: navBar(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {},
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.home_outlined,
                  color: Colors.black87,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.grid_view,
                  color: Colors.black87,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                shape: const CircleBorder(),
                child: const Icon(
                  FontAwesomeIcons.solidMessage,
                  color: Colors.black87
                ),
              ),
              MaterialButton(
                onPressed: () {},
                shape: const CircleBorder(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/logo_bg.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const HeadPage(),
            Expanded(
                child: Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: BottomPage()
                )
            )
          ],
        ),

      ),
    );
  }
}

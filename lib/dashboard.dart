import 'package:flutter/material.dart';
import 'package:garduino_dashboard/widgets/dashboard_page.dart';
import './pages/home/home_page.dart';
import './Responsive.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child:  const dashboard_page(),
                ),
              ),
            const Expanded(flex: 8, child: HomePage()),
          ],
        ),
      ),
    );
  }
}

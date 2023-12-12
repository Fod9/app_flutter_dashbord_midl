// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:garduino_dashboard/responsive.dart';
import 'package:garduino_dashboard/pages/home/widgets/activity_details_card.dart';
import 'package:garduino_dashboard/pages/home/widgets/bar_graph_card.dart';
import 'package:garduino_dashboard/pages/home/widgets/line_chart_card.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    SizedBox _height(BuildContext context) => SizedBox(
          height: Responsive.isDesktop(context) ? 30 : 20,
        );

    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 15 : 18),
          child: Column(
            children: [
              SizedBox(
                height: Responsive.isMobile(context) ? 5 : 18,
              ),
              _height(context),
              const ActivityDetailsCard(),
              _height(context),
              LineChartCard(),
              _height(context),
              BarGraphCard(),
              _height(context),
            ],
          ),
        )));
  }
}

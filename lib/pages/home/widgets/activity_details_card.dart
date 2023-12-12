import 'package:flutter/material.dart';
import 'package:garduino_dashboard/Responsive.dart';
import 'package:garduino_dashboard/model/health_model.dart';
import 'package:garduino_dashboard/widgets/custom_card.dart';
import 'package:flutter_svg/svg.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  final List<HealthModel> healthDetails = const [
    HealthModel(
        icon: 'assets/svg/thermometer.svg',
        value: "32.6°C",
        title: "Température"),
    HealthModel(icon: 'assets/svg/wind.svg', value: "84%", title: "Humidité"),
    HealthModel(
        icon: 'assets/svg/soil.svg',
        value: "238.3",
        title: "Humidité du sol"),
    HealthModel(
        icon: 'assets/svg/sun.svg', value: "176.7", title: "Irradiation"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: healthDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
          mainAxisSpacing: 12.0),
      itemBuilder: (context, i) {
        return CustomCard(
          customBorderRadius: 20,
          shadowColor: const Color.fromARGB(255, 175, 85, 208).withOpacity(0.7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(healthDetails[i].icon),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  healthDetails[i].value,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                healthDetails[i].title,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        );
      },
    );
  }
}

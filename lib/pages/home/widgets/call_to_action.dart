import 'package:flutter/material.dart';
import 'package:garduino_dashboard/const.dart';

class ProfiAndSearch extends StatefulWidget {
  const ProfiAndSearch({super.key});

  @override
  State<ProfiAndSearch> createState() => _ProfiAndSearchState();
}

class _ProfiAndSearchState extends State<ProfiAndSearch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 20,
          child: MaterialButton(
              onPressed: () {},
              color: colorBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  Text(
                    'Mon profil',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.3,
          height: MediaQuery.of(context).size.height / 20,
          child: MaterialButton(
            onPressed: () {},
            color: colorGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Mes recherches',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

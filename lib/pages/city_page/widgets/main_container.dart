import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class MainContainer extends StatelessWidget {
  final Weather weather;

  const MainContainer({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    String temperature = "${weather.temperature?.celsius?.round()}°C";
    String cloudiness = (weather.weatherDescription)!;

    return Container(
      margin: const EdgeInsets.only(top: 75),
      child: Column(
        children: [
          Text(
            temperature,
            style: const TextStyle(
              fontSize: 90,
              color: Colors.white,
            ),
          ),
          Text(
            cloudiness,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

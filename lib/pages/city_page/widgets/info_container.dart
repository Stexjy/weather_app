import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class InfoContainer extends StatelessWidget {
  final Weather weather;

  const InfoContainer({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    String sunrise =
        "${weather.sunrise?.hour}:${(weather.sunrise?.minute)! < 10 ? "0" : ""}${weather.sunrise?.minute}";
    String sunset =
        "${weather.sunset?.hour}:${(weather.sunset?.minute)! < 10 ? "0" : ""}${weather.sunset?.minute}";
    String temperatureFeelsLike =
        (weather.tempFeelsLike?.celsius?.round().toString())!;
    String humidity = (weather.humidity?.round().toString())!;
    String pressure = (weather.pressure?.round().toString())!;
    String windSpeed = (weather.windSpeed?.round().toString())!;

    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        //border: Border.all(color: Colors.blue[900]!),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: Expanded(
        child: Row(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    const Text("Sunrise"),
                    Text(sunrise),
                  ],
                ),
                Column(
                  children: [
                    const Text("Feels Like"),
                    Text(temperatureFeelsLike),
                  ],
                ),
                Column(
                  children: [
                    const Text("Pressure"),
                    Text(pressure),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              child: Column(
                children: [
                  Column(
                    children: [
                      const Text("Sunset"),
                      Text(sunset),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Humidity"),
                      Text(humidity),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Wind Speed"),
                      Text(windSpeed),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/pages/city_page/widgets/info_container.dart';
import 'package:weather_app/pages/city_page/widgets/main_container.dart';

class CityPage extends StatefulWidget {
  final Weather weather;

  const CityPage({super.key, required this.weather});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  /*child: Center(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Text(pisani),
            ),
          ),*/

  AppBar _getAppBar() {
    return AppBar(
      backgroundColor: Colors.cyan.shade800,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Center(child: Text(widget.weather.areaName!)),
    );
  }

  LinearGradient _getBackground() {
    List<Color> colors = [];

    colors.add(Colors.cyan.shade800);
    colors.add(Colors.cyan);

    //if(widget.weather.)

    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: colors,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: _getBackground(),
          ),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                MainContainer(weather: widget.weather),
                InfoContainer(weather: widget.weather)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

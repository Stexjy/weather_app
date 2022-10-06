import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_app/cloud/weather_manager.dart';
import 'package:weather_app/pages/search_page/widgets/search_bar.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  ValueListenableBuilder<String> resultsListView() {
    return ValueListenableBuilder<String>(
      valueListenable: SearchBar.searchText,
      builder: (context, value, child) {
        if (value.length < 3) {
          return Container();
        }

        List<String> cities =
            WeatherManager.getWeatherCities(SearchBar.getSearchText());

        return ListView.builder(
          itemCount: cities.length * 2,
          itemBuilder: (context, index) {
            String cityName = cities[(index ~/ 2)];

            if (index % 2 == 0) {
              return ListTile(
                textColor: Colors.white,
                title: Text(cityName),
              );
            }

            return const Divider(
              color: Colors.white,
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return resultsListView();
  }
}

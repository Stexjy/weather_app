import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page/widgets/search_bar.dart';
import 'package:weather_app/pages/search_page/widgets/search_results.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget _searchSection() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: IconButton(
              //TODO execute code when back button is pressed
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          const Flexible(
            flex: 6,
            child: SearchBar(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Flexible(
            child: _searchSection(),
          ),
          const Flexible(
            child: SearchResults(),
          ),
        ],
      ),
    );
  }
}

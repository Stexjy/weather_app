import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page/widgets/search_bar.dart';

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
              onPressed: () {},
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
      body: Column(
        children: [
          _searchSection(),
        ],
      ),
    );
  }
}

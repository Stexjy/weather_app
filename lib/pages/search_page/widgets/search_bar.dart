import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  static final searchText = ValueNotifier<String>("");

  static final TextEditingController _searchController =
      TextEditingController();

  const SearchBar({super.key});

  static String getSearchText() {
    return searchText.value;
  }

  OutlineInputBorder _border() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: TextField(
        onChanged: (value) {
          searchText.value = _searchController.text;
          searchText.notifyListeners();
        },
        controller: _searchController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey[900]),
          filled: true,
          fillColor: Colors.grey[800],
          border: _border(),
          focusedBorder: _border(),
          hintText: "Search a city",
        ),
      ),
    );
  }
}

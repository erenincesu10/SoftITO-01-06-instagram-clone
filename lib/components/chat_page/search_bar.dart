import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: const [
          Flexible(
            flex: 1,
            child: TextField(
              readOnly: true,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 16, 16, 16),
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: Color.fromARGB(255, 182, 182, 182),
          )
        ],
      ),
    );
  }
}

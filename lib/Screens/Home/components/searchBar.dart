import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.indigo,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
      ),
    );
  }
}

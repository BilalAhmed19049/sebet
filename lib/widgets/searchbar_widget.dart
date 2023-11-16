import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade900,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search list',
          hintStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}

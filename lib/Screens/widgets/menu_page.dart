import 'package:flutter/material.dart';
import 'package:foodecom/styles/dimenssions.dart';
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
//          border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(200)
//          ),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search food'
      ),
    );
  }
}

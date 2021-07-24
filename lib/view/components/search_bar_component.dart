import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
        border: Border.all(
          width: 0.5,
        ),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          alignLabelWithHint: true,
          hintText: 'Search report, analytic or anything here',
          contentPadding: EdgeInsets.symmetric(vertical: 18),
          hintStyle: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}

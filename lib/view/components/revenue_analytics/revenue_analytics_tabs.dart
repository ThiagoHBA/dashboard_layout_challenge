import 'package:flutter/material.dart';

class RevenueAnalyticsTabs extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;
  const RevenueAnalyticsTabs({
    Key? key,
    required this.title,
    this.selected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: selected ? Colors.lightBlue[50] : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent({
    required this.selected,
    required this.title,
    required this.onTap,
  });

  final bool selected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: selected ? Theme.of(context).cardColor : null,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FittedBox(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: selected
                  ? Theme.of(context).textTheme.headline6
                  : Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
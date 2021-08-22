import 'package:flutter/material.dart';

class SalesBranchAnalytics extends StatelessWidget {
  const SalesBranchAnalytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'Sales Branch Analytics',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Graph",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

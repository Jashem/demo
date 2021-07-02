import 'package:flutter/material.dart';

class TrendingCardScaffold extends StatelessWidget {
  final ListView list;
  final String title;
  const TrendingCardScaffold({
    Key? key,
    required this.list,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            list,
          ],
        ),
      ),
    );
  }
}

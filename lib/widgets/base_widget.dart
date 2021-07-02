import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    Size sizingInformation,
  ) builder;

  const BaseWidget({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return builder(context, screenSize);
  }
}

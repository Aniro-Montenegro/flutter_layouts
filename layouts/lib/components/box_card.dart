import 'package:flutter/material.dart';

class Boxcard extends StatelessWidget {
  final Widget boxContent;
  const Boxcard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: kElevationToShadow[3],
      ),
      child: boxContent,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:layouts/themes/theme_colors.dart';

class ContentDivision extends StatefulWidget {
  const ContentDivision({super.key});

  @override
  State<ContentDivision> createState() => _ContentDivisionState();
}

class _ContentDivisionState extends State<ContentDivision> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.division),
      ),
    );
  }
}

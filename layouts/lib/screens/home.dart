import 'package:flutter/material.dart';
import 'package:layouts/components/sections/account_sections.dart';
import 'package:layouts/components/sections/accounts_points.dart';

import 'package:layouts/components/sections/header.dart';
import 'package:layouts/components/sections/recent_activity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPonts(),
          ],
        ),
      ),
    );
  }
}

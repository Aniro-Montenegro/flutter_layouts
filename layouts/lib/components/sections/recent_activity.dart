import 'package:flutter/material.dart';
import 'package:layouts/components/box_card.dart';
import 'package:layouts/components/color_dot.dart';
import 'package:layouts/components/components_division.dart';
import 'package:layouts/themes/theme_colors.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({super.key});

  @override
  State<RecentActivity> createState() => _RecentActivityState();
}

class _RecentActivityState extends State<RecentActivity> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Boxcard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatefulWidget {
  const _RecentActivityContent();

  @override
  State<_RecentActivityContent> createState() => __RecentActivityContentState();
}

class __RecentActivityContentState extends State<_RecentActivityContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saída'),
                    Text(
                      'R\$ 9900.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Entrada'),
                    Text(
                      'R\$ 9900.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Limite de gastos: R\$ 1000.00'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Text(
          'Este mês você gastou \$1500.00 em compras do que o esperado. Cuidado para não ultrapassar o limite de gastos.',
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Ver mais!',
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}

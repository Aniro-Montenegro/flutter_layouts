import 'package:flutter/material.dart';
import 'package:layouts/components/box_card.dart';
import 'package:layouts/components/color_dot.dart';
import 'package:layouts/components/components_division.dart';
import 'package:layouts/themes/theme_colors.dart';

class AccountPonts extends StatefulWidget {
  const AccountPonts({super.key});

  @override
  State<AccountPonts> createState() => _AccountPontsState();
}

class _AccountPontsState extends State<AccountPonts> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Boxcard(boxContent: _AccountPontsContent()),
    );
  }
}

class _AccountPontsContent extends StatefulWidget {
  const _AccountPontsContent();

  @override
  State<_AccountPontsContent> createState() => __AccountPontsContentState();
}

class __AccountPontsContentState extends State<_AccountPontsContent> {
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pontos totais:'),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        '3000',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                const Text(
                  'Entrega gratuita: 15000 pts',
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                const Text(
                  '1 mês de assinatura: 10000 pts',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:layouts/components/box_card.dart';

class AccountActions extends StatefulWidget {
  const AccountActions({super.key});

  @override
  State<AccountActions> createState() => _AccountActionsState();
}

class _AccountActionsState extends State<AccountActions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Ações da conta',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: const Boxcard(
                    boxContent: _AccountActionsContent(Icon(Icons.account_balance_wallet), 'Depositar'),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: const Boxcard(
                    boxContent: _AccountActionsContent(Icon(Icons.cached), 'Transferir'),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: const Boxcard(
                    boxContent: _AccountActionsContent(Icon(Icons.center_focus_strong), 'Ler'),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 25),
              child: Text(
                'Pontos da conta',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ));
  }
}

class _AccountActionsContent extends StatefulWidget {
  final Icon icon;
  final String text;
  const _AccountActionsContent(this.icon, this.text);

  @override
  State<_AccountActionsContent> createState() => __AccountActionsContentState();
}

class __AccountActionsContentState extends State<_AccountActionsContent> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 75,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: widget.icon,
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}

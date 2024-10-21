import 'package:flutter/material.dart';
import '../box_card.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: 'Depositar',
                  ),
                ),
              ),
              InkWell(
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.cached),
                    text: 'Transferir',
                  ),
                ),
              ),
              InkWell(
                child: BoxCard(
                  boxContent: _AccountActionsContent(
                    icon: Icon(Icons.center_focus_strong),
                    text: 'Ler',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent(
      {super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 75,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}

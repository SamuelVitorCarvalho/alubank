import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pontos da Conta',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const BoxCard(boxContent: _AccountPointsContent())
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pontos totais:'),
        Text('3000'),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: ContentDivision(),
        ),
      ],
    );
  }
}

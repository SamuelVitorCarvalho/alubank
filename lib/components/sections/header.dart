import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(children: [
        Column(
          children: [
            Text('\$1000.00'),
            Text('Balanço da conta'),
          ],
        ),
        Icon(Icons.account_circle)
      ]),
    );
  }
}

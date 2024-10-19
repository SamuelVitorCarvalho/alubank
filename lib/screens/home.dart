import 'package:alubank/components/sections/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Scaffold(
        body: Column(
          children: <Widget>[
            Header(),
          ],
        ),
      ),
    );
  }
}

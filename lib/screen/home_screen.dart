import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sastra Digital School Flutter')),
      body: Center(child: Text('Welcome to my world - Flutter')),
    );
  }
}

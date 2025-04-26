import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody);
  }

  get _buildAppBar {
    return AppBar(title: const Text('Home'));
  }

  get _buildBody {
    return Container(
      decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
      height: 100,
      width: 100,
    );
  }
}

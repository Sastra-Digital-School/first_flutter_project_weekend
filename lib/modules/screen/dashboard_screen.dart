import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Welcome to the dashboard!'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: null, child: Text('Go to home screen')),
          ],
        ),
      ),
    );
  }
}

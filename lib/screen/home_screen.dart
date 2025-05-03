import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      drawer: _buildDrawer,
      body: _buildBody,
      bottomNavigationBar: _buildBottomNavigationBar,
    );
  }

  get _buildAppBar {
    return AppBar(
      title: const Text('Home Screen'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        IconButton(onPressed: () {}, icon: Icon(Icons.language)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
      ],
    );
  }

  get _buildDrawer {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [CircleAvatar(radius: 30), Text('Name: Sithy')],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            subtitle: Text('Khmer'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.mode),
            title: Text('Mode'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  get _buildBody => Column(
    children: [
      Row(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.only(top: 50),
            color: Colors.yellow,
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.only(top: 50),
            color: Colors.red,
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      ElevatedButton(onPressed: () {}, child: Text('Button')),
      OutlinedButton(onPressed: () {}, child: Text('data')),
      IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
    ],
  );

  get _buildBottomNavigationBar => BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        activeIcon: Icon(Icons.home_repair_service),
      ),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      BottomNavigationBarItem(icon: Icon(Icons.mode), label: 'Mode'),
    ],
  );
}

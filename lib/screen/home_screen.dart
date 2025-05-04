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

  get _buildBody {
    return Padding(
      padding: EdgeInsets.all(34),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 500,
              color: Colors.amber,
              child: Text('data'),
            ),
          ),
          Container(color: Colors.amber, child: Text('data')),
          Container(color: Colors.amber, child: Text('data')),
          Expanded(
            flex: 2,
            child: Container(
              width: 500,
              color: Colors.red,
              child: Text('data'),
            ),
          ),
          Expanded(
            child: Container(
              width: 500,
              color: Colors.black,
              child: Text('data'),
            ),
          ),
          Expanded(
            child: Container(
              width: 500,
              color: Colors.blue,
              child: Text('data'),
            ),
          ),
        ],
      ),
    );
  }

  // get _buildBody => SizedBox(
  //   width: double.infinity,
  //   child: Stack(
  //     alignment: Alignment.center,
  //     children: [
  //       Positioned(
  //         bottom: 80,
  //         right: 20,
  //         child: Container(
  //           height: 200,
  //           width: 200,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: NetworkImage(
  //                 'https://image-processor-storage.s3.us-west-2.amazonaws.com/images/866759932dc5358cee86f6552d1250f2/inside-bubble-spheres.jpg',
  //               ),
  //               fit: BoxFit.cover,
  //             ),
  //             borderRadius: BorderRadius.only(
  //               topRight: Radius.circular(80),
  //               bottomLeft: Radius.circular(80),
  //             ),
  //             gradient: LinearGradient(
  //               colors: [Colors.amber, Colors.red, Colors.blue],
  //               begin: Alignment.topRight,
  //               end: Alignment.bottomLeft,
  //             ),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.cyanAccent,
  //                 spreadRadius: 10,
  //                 blurRadius: 60,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         bottom: 20,
  //         child: Container(color: Colors.amber, height: 68, width: 70),
  //       ),
  //     ],
  //   ),
  // );

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

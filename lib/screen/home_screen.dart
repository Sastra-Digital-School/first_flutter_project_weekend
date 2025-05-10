import 'package:first_project/widgets/card_por.dart';
import 'package:first_project/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _counter = 0;
  bool _changeColor = false;

  void setCurrentIndex(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  void changeColor() {
    setState(() {
      _changeColor = !_changeColor;
    });
  }

  void incresment() {
    setState(() {
      _counter++;
    });
  }

  void descresment() {
    _counter <= 0
        ? setState(() {
          _counter = 0;
        })
        : setState(() {
          _counter--;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      drawer: _buildDrawer,
      body: _dashboard[_currentIndex],
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

  get _dashboard => [_buildBodyLayout, _buildBody, _buildBodyPage2];

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

  get _buildBodyLayout {
    return LayoutBuilder(
      builder: (context, constraints) {
        // bool isLand = constraints.maxWidth > constraints.maxHeight;
        if (constraints.maxWidth < 600) {
          return _mobile;
        } else {
          return _tablet;
        }
      },
    );
  }

  get _mobile {
    List<String> name = ['Sithy', 'Vuthy', 'Dara', 'Visal', 'Sokha'];

    List<String> photo = [
      'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2F75a4a8f4-3874-11ea-ac3c-f68c10993b04?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
      'https://plus.unsplash.com/premium_photo-1682091992663-2e4f4a5534ba?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWFsZSUyMHN0dWRlbnR8ZW58MHx8MHx8fDA%3D',
      'https://thumbs.dreamstime.com/b/male-student-working-desk-chinese-school-26363958.jpg',
      'https://as1.ftcdn.net/jpg/02/57/07/40/1000_F_257074046_HnOJVuJxaTnk9rCOatQjZcmpEd48lNjs.jpg',
      'https://www.universityofcalifornia.edu/sites/default/files/styles/feature_banner_image/public/2022-01/2018_03_12_UCR_day1_post-79.jpg?h=0c170278&itok=6dn4jQxG',
    ];

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(photo.length, (i) {
                return CardPor(index: i, image: photo[i], name: name[i]);
              }),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView(
            children: List.generate(name.length, (index) {
              return CardWidget(
                index: index,
                name: name[index],
                className: 'SDSG2',
                image: photo[index],
              );
            }),
          ),
        ),
      ],
    );
  }

  get _tablet => Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.red,
    child: Icon(Icons.tablet_android, size: 50),
  );

  get _buildBody {
    var textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    return Container(
      width: double.infinity,
      color: Colors.grey.shade300,
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Count number: $_counter',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _counter == 0
                      ? SizedBox()
                      : ElevatedButton(
                        onPressed: descresment,
                        child: Text('-', style: textStyle),
                      ),
                  ElevatedButton(
                    onPressed: incresment,
                    child: Text('+', style: textStyle),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: changeColor,
            child: Container(
              height: 100,
              width: 100,
              color: _changeColor == false ? Colors.amber : Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  get _buildBodyPage2 {
    var textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter Value: $_counter',
            style: textStyle.copyWith(fontSize: 30),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _counter > 0 ? descresment : null,
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16),
                ),
                child: Icon(Icons.remove, color: Colors.white),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: incresment,
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16),
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: changeColor,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: _changeColor ? Colors.blue : Colors.amber,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  get _buildBottomNavigationBar => BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        activeIcon: Icon(Icons.home_repair_service),
        label: 'Home',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.mode), label: 'Mode'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
    ],
    currentIndex: _currentIndex,
    onTap: (index) {
      setCurrentIndex(index);
    },
  );
}

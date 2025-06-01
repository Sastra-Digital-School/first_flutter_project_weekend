import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _buildBottomNavigationBar,
    );
  }

  get _buildAppBar {
    String imageProfile =
        'https://images.unsplash.com/photo-1503220317375-aaad61436b1b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fHRyYXZlbHxlbnwwfHwwfHx8MA%3D%3D';
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello, Vanessa'),
          Text(
            'Welcome to TripGride',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        CircleAvatar(backgroundImage: NetworkImage(imageProfile)),
        SizedBox(width: 10),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(68),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SearchBar(
            padding: WidgetStatePropertyAll(
              EdgeInsets.only(left: 20, right: 10),
            ),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            elevation: WidgetStatePropertyAll(0),
            leading: Icon(Icons.search),
            hintText: 'Search',
            trailing: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.tune, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  get _buildBody {
    List<String> categoriesList = ['Asia', 'Europe', 'Africa', 'America'];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          SizedBox(),
          Text(
            'Select your next trip',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: List.generate(categoriesList.length, (index) {
              return Container(
                padding: EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 15,
                  right: 15,
                ),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(categoriesList[index]),
              );
            }),
          ),
          Expanded(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }

  get _buildBottomNavigationBar {
    return Container(
      margin: EdgeInsets.all(20),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: List.generate(4, (index) {
          return Expanded(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(Icons.home),
            ),
          );
        }),
      ),
    );
  }
}

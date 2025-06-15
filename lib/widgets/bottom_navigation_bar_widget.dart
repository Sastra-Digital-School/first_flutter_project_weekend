import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  final void Function(int)? onChange;
  const BottomNavigationWidget({super.key, this.onChange});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  List<IconData> icons = [
    Icons.home,
    Icons.menu_book_rounded,
    Icons.favorite_border_rounded,
    Icons.dashboard_outlined,
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
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
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                if (widget.onChange != null) {
                  widget.onChange!(index);
                }
              },
              child:
                  _selectedIndex == index
                      ? CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(icons[index]),
                      )
                      : CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Icon(icons[index], color: Colors.white),
                      ),
            ),
          );
        }),
      ),
    );
  }
}

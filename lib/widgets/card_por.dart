import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardPor extends StatelessWidget {
  final int index;
  final String image;
  final String name;
  const CardPor({
    super.key,
    required this.index,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (context, imageProvider) {
                double size = 88.0;
                return Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              placeholder: (context, url) => SizedBox(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  const Color.fromARGB(255, 2, 32, 77),
                  const Color.fromARGB(255, 10, 133, 233),
                ],
              ),
            ),
            height: 25,
            width: 125,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 10,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/images/pin_icon.png'),
          ),
        ),
      ],
    );
  }
}

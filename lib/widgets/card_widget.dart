import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final int index;
  final String name;
  final String? className;
  final String? image;

  const CardWidget({
    super.key,
    required this.index,
    required this.name,
    this.className,
    this.image,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Card(
        color:
            (widget.index + 1) % 2 == 0 ? Colors.grey.shade200 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Row(
            spacing: 20,
            children: [
              CachedNetworkImage(
                imageUrl: widget.image ?? '',
                imageBuilder: (context, imageProvider) {
                  double size = 90.0;
                  return Container(
                    height: size,
                    width: size,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    'ID: 000${widget.index + 1}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Name: ${widget.name}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Class: ${widget.className}',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

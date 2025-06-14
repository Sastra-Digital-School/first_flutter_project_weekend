import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  final double? height;
  final String imageUrl;
  final Widget? child;
  const CardWidget({
    super.key,
    this.height,
    required this.imageUrl,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 450,
      width: Get.width - 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

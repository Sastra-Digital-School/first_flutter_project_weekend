import 'package:first_project/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const TextButtonWidget({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: AppTextStyle.bold14(color: Colors.black, underline: true),
      ),
    );
  }
}

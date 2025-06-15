import 'package:first_project/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardDetailPageViewWidget extends StatelessWidget {
  final String imageurl;
  const CardDetailPageViewWidget({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 50, right: 18),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.2),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            spacing: 6,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageurl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming tours',
                      style: AppTextStyle.bold18(color: Colors.black),
                    ),
                    Text(
                      '8 days . from \$50/persion',
                      style: AppTextStyle.regular14(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star_border_rounded),
                        Text(
                          '5.0',
                          style: AppTextStyle.bold14(color: Colors.black),
                        ),
                        SizedBox(width: 20),
                        Text('55 reviews'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 58,
          right: 26,
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.black87,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

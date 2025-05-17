import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewFeedCardWidget extends StatelessWidget {
  final String profilePhoto;
  final String profileName;
  final String duration;
  final String photo;
  final bool? isPrivate;

  const NewFeedCardWidget({
    super.key,
    required this.profilePhoto,
    required this.profileName,
    required this.duration,
    required this.photo,
    this.isPrivate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(profilePhoto),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        profileName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        duration,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Icon(
                        isPrivate == true ? Icons.lock : Icons.public,
                        size: 15,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz_rounded),
              Icon(Icons.close_rounded),
            ],
          ),
          CachedNetworkImage(
            imageUrl: photo,
            placeholder:
                (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Row(
            spacing: 16,
            children: [
              Row(
                spacing: 5,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.favorite, color: Colors.white, size: 12),
                  ),
                  Text('3.8K'),
                ],
              ),
              Spacer(),
              Text('386 comments'),
              Text('98 shares'),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(3, (index) {
              List<String> title = ['Like', 'Comment', 'Share'];
              List icon = [Icons.favorite, Icons.comment, Icons.share];
              return Row(
                spacing: 8,
                children: [
                  Icon(icon[index], size: 20, color: Colors.grey.shade600),
                  Text(
                    title[index],
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

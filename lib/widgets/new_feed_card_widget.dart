import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_project/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class NewFeedCardWidget extends StatefulWidget {
  final String profilePhoto;
  final String profileName;
  final String duration;
  final String photo;
  final bool? isPrivate;
  final void Function(int, bool)? onTap;
  final bool isLiked;

  const NewFeedCardWidget({
    super.key,
    required this.profilePhoto,
    required this.profileName,
    required this.duration,
    required this.photo,
    this.isPrivate,
    this.isLiked = false,
    this.onTap,
  });

  @override
  State<NewFeedCardWidget> createState() => _NewFeedCardWidgetState();
}

class _NewFeedCardWidgetState extends State<NewFeedCardWidget> {
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
  }

  @override
  void didUpdateWidget(covariant NewFeedCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isLiked = widget.isLiked;
  }

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
                backgroundImage: NetworkImage(widget.profilePhoto),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        widget.profileName,
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
                        widget.duration,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Icon(
                        widget.isPrivate == true ? Icons.lock : Icons.public,
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
            imageUrl: widget.photo,
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
              List iconSelected = [Icons.favorite, Icons.comment, Icons.share];
              List icon = [Icons.favorite_border, Icons.comment, Icons.share];
              return GestureDetector(
                onTap: () {
                  // if (index == 0) {
                  //   setState(() {
                  //     _isLiked = !_isLiked;
                  //   });
                  // }
                  widget.onTap!(index, _isLiked);
                },
                child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      _isLiked && index == 0
                          ? iconSelected[index]
                          : icon[index],
                      size: 20,
                      color:
                          _isLiked && index == 0
                              ? Colors.red
                              : Colors.grey.shade600,
                    ),
                    Text(
                      title[index],
                      // style: TextStyle(color: Colors.grey.shade600),
                      style: AppTextStyle.regular12(),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

import 'package:first_project/widgets/notification_card_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  final String id;
  final String? title;
  final int? filterLength;
  const NotificationScreen({
    super.key,
    required this.id,
    this.title,
    this.filterLength,
  });

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar, body: _buildBody);
  }

  get _buildAppBar {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context, [DateTime.now()]);
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title: Text(
        widget.title ?? 'Notification Screen',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  get _buildBody {
    List<String> filter = ['Today', 'Yesterday'];

    return ListView.builder(
      itemCount: widget.filterLength ?? filter.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                filter[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Column(
              children: List.generate(5, (index) {
                return NotificationCardWidget();
              }),
            ),
          ],
        );
      },
    );
  }
}

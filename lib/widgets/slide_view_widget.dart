import 'package:flutter/material.dart';

class StackPageViewWidget extends StatefulWidget {
  final Future<dynamic>? Function(int?) onSubmit;
  final List<String?> title;
  final List<int?> id;

  const StackPageViewWidget({
    super.key,
    required this.onSubmit,
    required this.title,
    required this.id,
  });

  @override
  State<StackPageViewWidget> createState() => _StackPageViewWidgetState();
}

class _StackPageViewWidgetState extends State<StackPageViewWidget> {
  final PageController _controller = PageController(
    viewportFraction: 0.75,
    initialPage: 5,
  );
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 0.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final int currentIndex = _currentPage.round();
    final List<int> renderOrder = [];

    // Cards before current
    for (int i = 0; i < 5; i++) {
      if (i != currentIndex) renderOrder.add(i);
    }
    // Add current card last so it's on top
    renderOrder.add(currentIndex);

    return Scaffold(
      backgroundColor: const Color(0xfff4f6f8),
      body: GestureDetector(
        onTap: () {
          widget.onSubmit(widget.id[currentIndex]);
        },
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // 1. Scrollable PageView (transparent)
            PageView.builder(
              reverse: true,
              controller: _controller,
              itemCount: 5,
              itemBuilder: (_, __) => SizedBox.shrink(),
            ),

            // 2. Layered Cards
            ...renderOrder.map((index) {
              final double distance = index - _currentPage;
              final double translateX = -distance * 40;
              final double scale = 1 - (distance.abs() * 0.1);

              return IgnorePointer(
                ignoring: true,
                child: Transform.translate(
                  offset: Offset(translateX, 0),
                  child: Transform.scale(
                    scale: scale,
                    child: DestinationCard(
                      title: widget.title[index] ?? '',
                      country: 'Brazil',
                      rating: 5.0,
                      reviews: 143,
                      imageUrl:
                          'https://picsum.photos/id/${index + 1011}/600/400',
                      onSubmit: () async {
                        widget.onSubmit(widget.id[index]);
                      },
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String title;
  final String country;
  final double rating;
  final int reviews;
  final String imageUrl;
  final Future<dynamic>? Function()? onSubmit;
  const DestinationCard({
    required this.title,
    required this.country,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
    this.onSubmit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Heart icon
          Positioned(
            top: 16,
            right: 16,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(Icons.upload, color: Colors.white),
              ),
            ),
          ),
          // Gradient overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Bottom content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(country, style: const TextStyle(color: Colors.white70)),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      '$rating',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      ' • $reviews reviews',
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // SlideToActWidget(onSubmit: onSubmit),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

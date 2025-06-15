import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToActWidget extends StatelessWidget {
  final Future<dynamic>? Function()? onSubmit;
  const SlideToActWidget({super.key, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final GlobalKey<SlideActionState> key = GlobalKey();
        return SlideAction(
          text: 'See more',
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          innerColor: Colors.white,
          outerColor: Colors.white24,
          sliderButtonIcon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
          ),
          key: key,
          onSubmit: onSubmit,
        );
      },
    );
  }
}

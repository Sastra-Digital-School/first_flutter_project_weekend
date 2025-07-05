import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

class MainResponsive extends GetResponsiveView {
  final Widget? small;
  final Widget? medium;
  final Widget? large;
  final Widget? watchSmall;

  MainResponsive({
    this.small,
    this.medium,
    this.large,
    this.watchSmall,
    super.key,
  });

  @override
  Widget? phone() {
    return small;
  }

  @override
  Widget? tablet() {
    return medium;
  }

  @override
  Widget? desktop() {
    return large;
  }

  @override
  Widget? watch() {
    return watchSmall;
  }
}

class MainResponsiveScreenUtil extends StatelessWidget {
  final Widget? small;
  final Widget? medium;
  final Widget? large;

  const MainResponsiveScreenUtil({super.key, this.small, this.medium, this.large});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;

    if (screenWidth < 600) {
      return small ?? Container();
    } else if (screenWidth < 1000) {
      return medium ?? Container();
    } else {
      return large ?? Container();
    }
  }
}

import 'package:flutter/material.dart';

class ResponsiveScreenProvider {
  static bool isSmallMobileDevice(BuildContext context) {
    return MediaQuery.of(context).size.width < 360;
  }

  static bool isMobileDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 360 &&
        MediaQuery.of(context).size.width < 680;
  }

  static bool isSmallTabletDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 768;
  }

  static bool isLargeTabletDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768 &&
        MediaQuery.of(context).size.width < 992;
  }

  static bool isSmallDesktopDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 992 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargeDesktopDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200 &&
        MediaQuery.of(context).size.width < 1440;
  }

  static bool isExtraLargeDesktopDevice(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1440;
  }

  /// Avarge

  static bool isMobile(BuildContext context) {
    return isSmallMobileDevice(context) || isMobileDevice(context);
  }

  static bool isTablet(BuildContext context) {
    return isSmallTabletDevice(context) || isLargeTabletDevice(context);
  }

  static bool isDesktop(BuildContext context) {
    return isSmallDesktopDevice(context) ||
        isLargeDesktopDevice(context) ||
        isExtraLargeDesktopDevice(context);
  }
}

library cc_essentials;

import 'package:cc_essentials/helpers/navigator/navigator.dart';
import 'package:cc_essentials/theme/colors.dart';
import 'package:flutter/material.dart';
import 'services/shared_preferences/shared_preference_service.dart';
import 'theme/custom_theme.dart';

class CCEssentials {
  static Future<void> initialize({
    required Color primaryColor,
    required Color accentColor,
    required GlobalKey<NavigatorState> navigatorKey,
  }) async {
    await SharedPreferencesService().init();

    GlobalColors().initialize(primary: primaryColor, accent: accentColor);
    CustomTheme.initialize(primary: primaryColor, accent: accentColor);

    NavigationService.navigatorKey = navigatorKey;
  }
}

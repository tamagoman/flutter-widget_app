

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Color list immutable
final colorListProvider = Provider((ref)=> colorList);

//Only a boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// simple int
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

// Object type AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller or Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // The 'state' will be a new instance of AppTheme()
  ThemeNotifier() : super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void chanegColorIndex( int colorIndex ) {
    state = state.copyWith( selectedColor: colorIndex );
  }

}
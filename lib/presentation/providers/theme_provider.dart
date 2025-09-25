

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Color list immutable
final colorListProvider = Provider((ref)=> colorList);

//Only a boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// simple int
final selectedIndexColorProvider = StateProvider<int>((ref) => 0);

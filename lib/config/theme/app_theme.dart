import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green, 
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false
  }): assert(selectedColor >= 0, 'Selected color must be greater than or equal to 0'),
      assert(selectedColor < colorList.length, 
        'Selected color must be less or equal to ${colorList.length - 1}');
  // assert(selectedColor >= 0 && selectedColor < colorList.length, 'selectedColor must be between 0 and ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    // primarySwatch: createMaterialColor(colorList[selectedColor]),
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    // colorScheme: ColorScheme.fromSeed(seedColor: colorList[selectedColor]),
    colorSchemeSeed: colorList[selectedColor],
  );
   
}


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = 'theme_changer_screen';
  
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch( themeNotifierProvider ).isDarkMode; 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: () {
              //ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
              // ref.read(isDarkModeProvider.notifier).update((state) => !isDarkMode);
              ref.read( themeNotifierProvider.notifier ).toggleDarkMode();
              //ref.read(themeNotifierProvider.notifier
              
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedIndex = ref.watch( themeNotifierProvider ).selectedColor;
    // final int selectedIndex = ref.watch(selectedIndexColorProvider;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${ color.toARGB32() }'),
          value: index,
          activeColor: color,
          groupValue: selectedIndex,
          onChanged: (value) {
            //Update can be used in the previous value is needed
            //ref.read(selectedIndexColorProvider.notifier).update((state) => value?.toInt() ?? state);
            // ref.read(selectedIndexColorProvider.notifier).state = value?.toInt() ?? 0;

            ref.read( themeNotifierProvider.notifier ).chanegColorIndex(value?.toInt() ?? 0);
          },
        );
      }
    );
  }
}
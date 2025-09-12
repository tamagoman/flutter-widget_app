import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.arrow_back_ios_new_rounded ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton( onPressed: () {}, child: const Text('Elevated') ),
            const ElevatedButton( onPressed: null, child: Text('Elevated Disabled') ),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')
            ),

            FilledButton(onPressed: (){}, child: const Text('Filled')),

            FilledButton.icon(
              onPressed: () { },
              icon: const Icon( Icons.accessibility_new ),
              label: const Text('Filled Icon'),
            ),
      
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),

            OutlinedButton.icon(
              onPressed: (){},
              icon: const Icon( Icons.terminal ), 
              label: const Text('Outlined Icon')
            ),

            TextButton(onPressed: () {}, child: const Text('Text Button')),
            
            TextButton.icon(
              onPressed: () {}, 
              label: const Text('Text Button'),
              icon: const Icon( Icons.text_fields ),
            ),
            
            IconButton(
              onPressed: (){},
              icon: const Icon( Icons.volume_up_outlined ),
            ),  

            IconButton(
              onPressed: null,
              icon: const Icon( Icons.volume_off_rounded ),
            ),

            IconButton(
              onPressed: (){ }, 
              icon: const Icon( Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white)
              ),
            ),

            const SizedBox( width: 10, height: 10 ),
          ],
        )
      ),
    );
  }
}
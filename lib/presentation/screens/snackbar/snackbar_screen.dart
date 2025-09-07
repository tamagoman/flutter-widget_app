import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  
  void ShowCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );
    
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog( BuildContext context ) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Reprehenderit dolore eu laboris et nisi incididunt amet sunt commodo aliqua. Do sunt in eiusmod labore aliquip sit cillum. Non ad nostrud fugiat aute quis adipisicing consequat mollit. Magna culpa in occaecat ipsum adipisicing id labore nisi in nostrud adipisicing ipsum id magna. In quis labore proident deserunt sit anim Lorem. Proident reprehenderit occaecat tempor pariatur ullamco Lorem irure. Aliqua sit et Lorem ea laborum exercitation fugiat do exercitation do eiusmod aliquip.'),
        actions: [
          TextButton(
            onPressed: (){
              context.pop();
              // Navigator.pop(context)
            },
            child: const Text('Cancelar')
          ),
          FilledButton(
            onPressed: (){
              context.pop();
              // Navigator.pop(context)
            },
            child: const Text('Aceptar')
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Nulla qui Lorem Lorem veniam ullamco occaecat excepteur nostrud ullamco adipisicing nisi. Nulla nulla amet elit et excepteur aliqua. Pariatur veniam reprehenderit esse quis et. Incididunt eu mollit eu proident enim voluptate sit velit. Ullamco sit anim velit sint enim tempor.')
                  ]
                );
              }, 
              child: const Text('Licencias usadas por Flutter')
            ),
            FilledButton(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar diálogos')
            ),
          ],
        )
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => ShowCustomSnackbar(context),
      ),
    );
  }
}
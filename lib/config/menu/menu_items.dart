import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;


  MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

final appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Contador con Riverpod',
    link: '/counter-riverpod',
    icon: Icons.countertops_rounded
  ),

  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbars y Dialogs',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'StatefulWidget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),
  
  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Checkbox, Radio y Switch',
    link: '/ui-controls',
    icon: Icons.check_circle_outline
  ),
  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Un pequeño tutorial de la app',
    link: '/tutorial',
    icon: Icons.school_outlined
  ),
  MenuItem(
    title: 'Infinite Scroll & Pull to Refresh',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded
  ),
  MenuItem(
    title: 'Change Theme',
    subTitle: 'Cambiar tema de la app',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined
  ),
];
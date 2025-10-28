import 'package:flutter/material.dart';

class CustomBottomNavigationbar extends StatelessWidget{
  const  CustomBottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'inicio'),
          BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'categorias'),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'favoritos'),
      ]);
  }
}
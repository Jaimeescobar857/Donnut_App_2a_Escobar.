import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/donut_tile.dart';

import 'donut_tile.dart';
 
class DonutTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream","Krispy cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry","Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape","Krispy cream", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco","Dunkin cream", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  DonutTab({super.key});
 
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // Cuántos elementos tiene:
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        // Encargado de organizar la cuadrícula (El grid Delegate)
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Determinar el número de columnas (Axis - Eje)
            crossAxisCount: 2,
            childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          // Elemento individual de una cuadrícula (Tile)
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          );
        });
  }
}
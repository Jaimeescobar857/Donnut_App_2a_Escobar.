import 'package:flutter/material.dart';

import 'donut_tile.dart';
 
class PancakesTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Classic Pancake", "IHOP", "55", Colors.yellow, "lib/images/classic_pancake.png"],
    ["Chocolate Chip", "Denny's", "70", Colors.brown, "lib/images/chocolate_chip_pancake.png"],
    ["Blueberry Pancake", "Waffle House", "40", Colors.blue, "lib/images/blueberry_pancake.png"],
    ["Banana Nut", "Perkins", "90", Colors.orange, "lib/images/banana_nut_pancake.png"],
    ["Strawberry Delight", "IHOP", "60", Colors.red, "lib/images/strawberry_pancake.png"],
    ["Peanut Butter Pancake", "Denny's", "85", Colors.blueGrey, "lib/images/peanut_butter_pancake.png"],
    ["Cinnamon Roll", "Waffle House", "75", Colors.grey, "lib/images/cinnamon_roll_pancake.png"],
    ["Maple Bacon", "Perkins", "65", Colors.orangeAccent, "lib/images/maple_bacon_pancake.png"],
  ];



  PancakesTab({super.key});
 
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
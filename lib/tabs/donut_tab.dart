import 'package:flutter/material.dart';

import 'donut_tile.dart';
 
class DonutTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    
  ["Cheeseburger", "Burger King", "55", Colors.yellow, "lib/images/icecream_donut.png"],
  ["BBQ Bacon", "McDonald's", "70", Colors.brown, "lib/images/strawberry_donut.png"],
  ["Veggie Burger", "Subway", "40", Colors.green, "lib/images/grape_donut.png"],
  ["Double Patty", "Wendy's", "90", Colors.orange, "lib/images/chocolate_donut.png"],
  ["Spicy Chicken", "KFC", "60", Colors.red, "lib/images/icecream_donut.png"],
  ["Big Mac", "McDonald's", "85", Colors.blueGrey, "lib/images/strawberry_donut.png"],
  ["Mushroom Swiss", "Carl's Jr.", "75", Colors.grey, "lib/images/grape_donut.png"],
  ["Classic Whopper", "Burger King", "65", Colors.orangeAccent, "lib/images/chocolate_donut.png"],
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
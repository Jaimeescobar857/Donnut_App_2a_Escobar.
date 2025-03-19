import 'package:flutter/material.dart';

import 'donut_tile.dart';
 
class BurguerTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Cheeseburger", "Burger King", "55", Colors.yellow, "lib/images/cheeseburger.png"],
    ["BBQ Bacon", "McDonald's", "70", Colors.brown, "lib/images/bbq_bacon.png"],
    ["Veggie Burger", "Subway", "40", Colors.green, "lib/images/veggie_burger.png"],
    ["Double Patty", "Wendy's", "90", Colors.orange, "lib/images/double_patty.png"],
    ["Spicy Chicken", "KFC", "60", Colors.red, "lib/images/spicy_chicken.png"],
    ["Big Mac", "McDonald's", "85", Colors.blueGrey, "lib/images/big_mac.png"],
    ["Mushroom Swiss", "Carl's Jr.", "75", Colors.grey, "lib/images/mushroom_swiss.png"],
    ["Classic Whopper", "Burger King", "65", Colors.orangeAccent, "lib/images/classic_whopper.png"],
  ];


  BurguerTab({super.key});
 
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
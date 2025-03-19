import 'package:flutter/material.dart';

import 'donut_tile.dart';
 
class SmoothieTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Strawberry Smoothie", "Jamba Juice", "55", Colors.red, "lib/images/strawberry_smoothie.png"],
    ["Mango Madness", "Smoothie King", "70", Colors.orange, "lib/images/mango_smoothie.png"],
    ["Green Detox", "Juice It Up!", "40", Colors.green, "lib/images/green_detox_smoothie.png"],
    ["Berry Blast", "Planet Smoothie", "90", Colors.purple, "lib/images/berry_blast_smoothie.png"],
    ["Peach Paradise", "Jamba Juice", "60", Colors.yellow, "lib/images/peach_smoothie.png"],
    ["Chocolate Protein", "Smoothie King", "85", Colors.brown, "lib/images/chocolate_protein_smoothie.png"],
    ["Blueberry Bliss", "Juice It Up!", "75", Colors.blue, "lib/images/blueberry_smoothie.png"],
    ["Pineapple Punch", "Planet Smoothie", "65", Colors.lightGreen, "lib/images/pineapple_smoothie.png"],
  ];



  SmoothieTab({super.key});
 
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
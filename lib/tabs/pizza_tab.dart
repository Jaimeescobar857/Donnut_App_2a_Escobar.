import 'package:flutter/material.dart';

import 'donut_tile.dart';
 
class PizzaTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Pepperoni", "Pizza Hut", "60", Colors.red, "lib/images/pepperoni_pizza.png"],
    ["BBQ Chicken", "Domino's", "70", Colors.brown, "lib/images/bbq_chicken_pizza.png"],
    ["Veggie Supreme", "Little Caesars", "40", Colors.green, "lib/images/veggie_pizza.png"],
    ["Meat Lover's", "Papa John's", "90", Colors.orange, "lib/images/meat_lovers_pizza.png"],
    ["Hawaiian", "Pizza Hut", "60", Colors.yellow, "lib/images/hawaiian_pizza.png"],
    ["Margherita", "Domino's", "85", Colors.blueGrey, "lib/images/margherita_pizza.png"],
    ["Four Cheese", "Little Caesars", "75", Colors.grey, "lib/images/four_cheese_pizza.png"],
    ["Buffalo Chicken", "Papa John's", "65", Colors.orangeAccent, "lib/images/buffalo_chicken_pizza.png"],
  ];



  PizzaTab({super.key});
 
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
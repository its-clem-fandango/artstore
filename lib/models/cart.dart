import 'package:ecommerce_flutter/models/art.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Art> artShop = [
    Art(
      name: "Park Guell",
      price: "4000",
      description: "Description",
      imagePath: "lib/images/guell.png",
    ),
    Art(
      name: "Gracia",
      price: "6000",
      description: "Description",
      imagePath: "lib/images/gracia.png",
    ),
    Art(
      name: "Sagrada",
      price: "10,000",
      description: "Description",
      imagePath: "lib/images/sagrada.png",
    ),
    Art(
      name: "Barcelona",
      price: "12,000",
      description: "Description",
      imagePath: "lib/images/buildings.png",
    ),
  ];

  //list of items in the user cart
  List<Art> userCart = [];

  //get list of art for sale
  List<Art> getArtList() {
    return artShop;
  }

  //get user cart
  List<Art> getUserCart() {
    return userCart;
  }

  //add items to the cart
  void addItemsToCart(
    Art art,
  ) {
    userCart.add(art);
    notifyListeners(); //call whenever object changes
  }

  //remove items from cart
  void removeItemsFromCart(Art art) {
    userCart.remove(art);
    notifyListeners(); //call whenever object changes/state needs updating
  }
}

import 'package:ecommerce_flutter/components/cart_item.dart';
import 'package:ecommerce_flutter/models/art.dart';
import 'package:ecommerce_flutter/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            const Text(
              "My Cart",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  // get individual painting

                  Art individualPainting = value.getUserCart()[index];
                  //return the cart item
                  return CartItem(
                    art: individualPainting,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

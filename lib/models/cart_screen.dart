import 'package:flutter/material.dart';

import 'cart_class.dart';

class CartScreen extends StatelessWidget {
  final Cart cart;

  CartScreen({required this.cart});

  double calculateTotalPrice() {
    double total = 0.0;

    for (var item in cart.selectedItems) {
      total += item.fruit.unitPrice * item.quantity;
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.selectedItems.length,
        itemBuilder: (context, index) {
          final item = cart.selectedItems[index];
          final totalPrice = item.fruit.unitPrice * item.quantity;

          return ListTile(
            leading: Image.asset(
              item.fruit.image,
              width: 60,
              height: 100,
            ),
            title: Text(item.fruit.name),
            subtitle: Text(
              'Unit Price: \$${item.fruit.unitPrice.toStringAsFixed(2)}\nTotal: \$${totalPrice.toStringAsFixed(2)}',
            ),
            trailing: Text('Quantity: ${item.quantity}'),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Price: \$${calculateTotalPrice().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform checkout or further actions here
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
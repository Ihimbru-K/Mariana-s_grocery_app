import 'package:flutter/material.dart';

import 'cart_screen.dart';

class Fruit {
  final String name;
  final String category;
  final double unitPrice;
  final String image;

  Fruit({
    required this.name,
    required this.category,
    required this.unitPrice,
    required this.image,
  });
}

class CartItem {
  final Fruit fruit;
  int quantity;

  CartItem({required this.fruit, this.quantity = 1});
}

class Cart {
  List<CartItem> selectedItems = [];

  void addToCart(Fruit fruit) {
    final existingItem = selectedItems.firstWhere(
          (item) => item.fruit.name == fruit.name,
      orElse: () => CartItem(fruit: fruit),
    );

    if (existingItem.quantity >= 1) {
      existingItem.quantity++;
    } else {
      selectedItems.add(existingItem);
    }
  }

  void removeFromCart(Fruit fruit) {
    final existingItem = selectedItems.firstWhere(
          (item) => item.fruit.name == fruit.name,
      orElse: () => CartItem(fruit: fruit),
    );

    if (existingItem.quantity > 1) {
      existingItem.quantity--;
    } else {
      selectedItems.remove(existingItem);
    }
  }
}
class FruitSelectionScreen extends StatefulWidget {
  @override
  _FruitSelectionScreenState createState() => _FruitSelectionScreenState();
}

class _FruitSelectionScreenState extends State<FruitSelectionScreen> {
  final Cart cart = Cart();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit Selection'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/images/banana.png',
              width: 50,
              height: 50,
            ),
            title: Text('Banana'),
            subtitle: Text('Category: Fruits'),
            trailing: Text('Price: \$7.00'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (counter > 0) {
                      counter--;
                    }
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                "$counter",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(width: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              final fruit = Fruit(
                name: 'Banana',
                category: 'Fruits',
                unitPrice: 7.0,
                image: 'assets/images/banana.png',
              );
              cart.addToCart(fruit);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: cart),
                ),
              );
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
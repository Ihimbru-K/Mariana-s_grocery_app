import 'package:flutter/material.dart';

import '../constants/colors.dart';
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
      body: Stack(children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/girl.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.45 -
              MediaQuery.of(context).size.height * 0.2,
          left: MediaQuery.of(context).size.width * 0.001,
          right: MediaQuery.of(context).size.width * 0.001,
          child: Container(

            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30.0), // Round the top corners
              ),
            ),
            child: Column(
            children: [
              ListTile(
               // leading: Image.asset(
                 // 'assets/images/orange.png',
                  //width: 50,
                  //height: 50,
               // ),
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
          ),),)

      ],)
    );
  }
}
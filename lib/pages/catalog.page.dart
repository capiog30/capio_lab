import 'package:flutter/material.dart';
import '../models/product.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage({super.key});

  final List<Product> products = [
    Product(
      name: 'Burger',
      category: 'Food',
      price: 99,
      description: 'A delicious beef burger.',
      image: 'assets/images/burger.jpg',
    ),
    Product(
      name: 'Pizza',
      category: 'Food',
      price: 199,
      description: 'Cheesy and delicious pizza.',
      image: 'assets/images/pizza.jpg',
    ),
    Product(
      name: 'Iced Coffee',
      category: 'Drink',
      price: 89,
      description: 'Cold and refreshing coffee.',
      image: 'assets/images/coffee.jpg',
    ),
    Product(
      name: 'Milk Tea',
      category: 'Drink',
      price: 79,
      description: 'Sweet milk tea.',
      image: 'assets/images/milk_tea.jpg',
    ),
    Product(
      name: 'Chicken',
      category: 'Food',
      price: 149,
      description: 'Crispy fried chicken.',
      image: 'assets/images/chicken.jpg',
    ),
    Product(
      name: 'Donut',
      category: 'Dessert',
      price: 59,
      description: 'Sweet and soft donut.',
      image: 'assets/images/donut.jpg',
    ),
    Product(
      name: 'Cake',
      category: 'Dessert',
      price: 129,
      description: 'A delicious slice of cake.',
      image: 'assets/images/cake.jpg',
    ),
    Product(
      name: 'Fries',
      category: 'Food',
      price: 59,
      description: 'Crispy and delicious fries.',
      image: 'assets/images/fries.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Catalog'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.70,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  product.image,
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(product.category),

                      const SizedBox(height: 5),

                      Text('₱${product.price}'),

                      const SizedBox(height: 5),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('View'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
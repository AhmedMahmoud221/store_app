import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context, UpdateProductPage.id);
      },
      child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0,
                      offset: Offset(10, 10),
                    ),
                  ],
                ),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text(
                          product.title.substring(  0, 12) + '...',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 124, 124, 124),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${product.price}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                
                              ),
                            ),
                          Icon( 
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              Positioned(
                right: 0,
                top:-35,
                child: Image.network(
                  product.image,
                  height: 80,
                  width: 140,
                ),
              ),
            ],
          ),
    );
  }
}
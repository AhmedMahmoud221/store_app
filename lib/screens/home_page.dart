import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/all_product_service.dart';
import 'package:store_app/widgets/coustm_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title:  Text('New Trends', style: TextStyle(
          color: Colors.black),),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 80),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProducts(),
          builder: (context, snapshot)
          {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;

              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 80,
                ),
                itemBuilder: (context, index) {
                return CustomCard(product: products[index]);
                }
              );
            } else 
            {
              return Center(
                child: CircularProgressIndicator()
              );
            }
          }
        ),
      ),
    );
  }
}
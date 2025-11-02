import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_bottun.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  
  static String id = 'Update Product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Update Product', style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomFormTextField(
              hintText: 'Product Name',
            ),
            SizedBox(height: 16,),
            CustomFormTextField(
              hintText: 'Description',
            ),
            SizedBox(height: 16,),
            CustomFormTextField(
              hintText: 'Price',
            ),
            SizedBox(height: 16,),
            CustomFormTextField(
              hintText: 'Image URL',
            ),
            SizedBox(height: 32,),
            
            CustomButton(text: 'Update Product',)
          ],
        ),
      )
    );
  }
}
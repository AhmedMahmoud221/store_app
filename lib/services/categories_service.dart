import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CategoriesService 
{
  Future<List<ProductModel>> getCategoriesProducts ({required String categoryName}) async 
  {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
  
  List<ProductModel> ProductsList = [];
  for (int i = 0; i < data.length; i++) 
  {
    ProductsList.add(
    ProductModel.fromJson(data[i]),
    );
  }
  return ProductsList;   
  }
}
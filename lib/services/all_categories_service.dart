import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllCategoriesService {
  Future<List<dynamic>> getCategoriesProducts() async {

    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');

  return data;
} 
  }

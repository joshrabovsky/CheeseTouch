import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class UserProvider with ChangeNotifier {
  List<Map<String, String>> _items = [];

  List<Map<String, String>> get items {
    return [..._items];
  }

  // Product findById(String id) {
  //   return _items.firstWhere((product) {
  //     return product.id == id;
  //   });
  // }

  Future<void> fetchAndSetUsers() async {
    const url =
        "https://cheesetouch-e362e-default-rtdb.firebaseio.com/users.json";
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<Map<String, String>> loadedUsers = [];
      extractedData.forEach((userId, userData) {
        loadedUsers.add({
          "username": userData["username"],
          "points": userData["points"].toString(),
          "rank": userData["rank"].toString(),
        });
      });
      _items = loadedUsers;
      notifyListeners();
    } catch (error) {
      throw error;
    }
    print("loadedUsers");
  }

  // Future<void> addProduct(Product product) async {
  //   const url =
  //       "https://flutter-update-af503-default-rtdb.firebaseio.com/products.json";
  //   try {
  //     final response = await http.post(
  //       url,
  //       body: json.encode({
  //         "title": product.title,
  //         "description": product.description,
  //         "imageUrl": product.imageUrl,
  //         "price": product.price,
  //         "isFavourite": product.isFavourite,
  //       }),
  //     );
  //     final newProduct = Product(
  //       title: product.title,
  //       description: product.description,
  //       price: product.price,
  //       imageUrl: product.imageUrl,
  //       id: json.decode(response.body)["name"],
  //     );
  //     _items.add(newProduct);
  //     notifyListeners();
  //   } catch (error) {
  //     print(error);
  //     throw error;
  //   }
  // }

  // Future<void> updateProduct(String id, Product newProduct) async {
  //   final prodIndex = _items.indexWhere((prod) {
  //     return prod.id == id;
  //   });
  //   if (prodIndex >= 0) {
  //     final url =
  //         "https://flutter-update-af503-default-rtdb.firebaseio.com/products/$id.json";
  //     await http.patch(url,
  //         body: json.encode({
  //           "title": newProduct.title,
  //           "description": newProduct.description,
  //           "price": newProduct.price,
  //           "imageUrl": newProduct.imageUrl,
  //         }));
  //     _items[prodIndex] = newProduct;
  //     notifyListeners();
  //   } else {
  //     print("...");
  //   }
  //   notifyListeners();
  // }

  // Future<void> deleteProduct(String id) async {
  //   final url =
  //       "https://flutter-update-af503-default-rtdb.firebaseio.com/products/$id.json";
  //   final existingProductIndex = _items.indexWhere((prod) => prod.id == id);
  //   var existingProduct = _items[existingProductIndex];
  //   _items.removeAt(existingProductIndex);
  //   notifyListeners();
  //   final response = await http.delete(url);
  //   if (response.statusCode >= 400) {
  //     _items.insert(existingProductIndex, existingProduct);
  //     notifyListeners();
  //     throw HttpException("Couldn't delete product.");
  //   }
  //   existingProduct = null;
  // }
}

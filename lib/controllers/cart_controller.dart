import 'package:get/state_manager.dart';
import 'package:online_shopee/models/product.dart';

class CartController extends GetxController {
  RxList<Product> cartItems = [].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }

  removeFromCart(int id) {
   cartItems.removeWhere((item)=>item.id == id);
}
}

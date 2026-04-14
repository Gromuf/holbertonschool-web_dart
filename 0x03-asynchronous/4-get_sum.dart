import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    String userDataString = await fetchUserData();
    Map<String, dynamic> userData = json.decode(userDataString);
    String userId = userData["id"];
    String ordersString = await fetchUserOrders(userId);
    List<dynamic> orderList = json.decode(ordersString);
    double total = 0.0;
    for (var product in orderList) {
      String priceString = await fetchProductPrice(product);
      var price = json.decode(priceString);
      total += price;
    }
    return total;
  } catch (err) {
    return -1;
  }
}
import 'package:flutter/material.dart';
import 'api.dart';

class Cart with ChangeNotifier {
  final List<Item> _items = [];
  final List<Item> ite = [];
  double _price = 0.0;
  void add(Item item) {
    _items.add(item);
    _price += item.price as double;
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    _price -= item.price as double;
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _price;
  }

  List<Item> get basketItem {
    return _items;
  }
}


















/*
class CartProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0.0;

  double get totalPrice => _totalPrice;

  void _setPrefItems() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("cart_item", _counter);
    pref.setDouble("total_price", _totalPrice);
    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _counter = pref.getInt("cart_item") ?? 0;
    _totalPrice = pref.getDouble("total_price") ?? 0.0;
    notifyListeners();
  }

// add or remove counter
  void addCounter() {
    _counter++;
    _setPrefItems();
    notifyListeners();
  }

  void removeCounte() {
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter() {
    _getPrefItems();
    return _counter;
  }

  // this fo total_price
  void addTotalPricer(double productPrice) {
    _totalPrice = _totalPrice + productPrice;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _totalPrice = _totalPrice - productPrice;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice() {
    _getPrefItems();
    return _totalPrice;
  }
}
*/
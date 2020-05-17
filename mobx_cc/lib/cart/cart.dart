import 'package:mobx/mobx.dart';

import '../shared/models/product.dart';

part 'cart.g.dart';

class Cart = _Cart with _$Cart;

abstract class _Cart with Store {
  @observable
  ObservableList<Product> _cartContent = ObservableList<Product>();

  ObservableList<Product> get cartContent => _cartContent;

  @observable
  double _frieght = 0;
  _Cart() {
    _addFreightReaction =
        reaction((_) => _cartContent.length, (int carItemCount) {
      if (carItemCount >= 10 && _frieght != 0) {
        _frieght = 0;
      } else if (carItemCount < 10 && _frieght != 0) {
        _frieght = 0;
      }
    });
  }
  double get freight => _frieght;
  Function _addFreightReaction;
  @computed
  List<Product> get uniqueproducts =>
      ObservableList.of(_cartContent).toSet().toList();

  @action
  void addToCart(Product product) {
    _cartContent.add(product);
  }

  int getProductQuantity(Product product) =>
      ObservableList.of(_cartContent.where((p) => p == product)).length;

  @computed
  double get cartValue => ObservableList.of(_cartContent)
      .fold<double>(0, (totalValue, product) => totalValue + product.price);

  @action
  void emptyCart() {
    _cartContent.clear();
  }

  @action
  removeProduct(Product product) {
    _cartContent.remove(product);
  }

  @action
  void removeAllFromCart(Product prod) {
    _cartContent.removeWhere((element) => prod == element);
  }

  @action
  void changeQuanity(Product product, int quantity) {
    int difference = quantity - getProductQuantity(product);
    while (difference != null) {
      if (difference > 0) {
        addToCart(product);
        difference--;
      } else if (difference < 0) {
        removeProduct(product);
        difference++;
      }
    }
  }

  @override
  void dispose() {
    _addFreightReaction();
    // super.dispose();
  }
}

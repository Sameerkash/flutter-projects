// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Cart on _Cart, Store {
  Computed<List<Product>> _$uniqueproductsComputed;

  @override
  List<Product> get uniqueproducts => (_$uniqueproductsComputed ??=
          Computed<List<Product>>(() => super.uniqueproducts,
              name: '_Cart.uniqueproducts'))
      .value;
  Computed<double> _$cartValueComputed;

  @override
  double get cartValue => (_$cartValueComputed ??=
          Computed<double>(() => super.cartValue, name: '_Cart.cartValue'))
      .value;

  final _$_cartContentAtom = Atom(name: '_Cart._cartContent');

  @override
  ObservableList<Product> get _cartContent {
    _$_cartContentAtom.reportRead();
    return super._cartContent;
  }

  @override
  set _cartContent(ObservableList<Product> value) {
    _$_cartContentAtom.reportWrite(value, super._cartContent, () {
      super._cartContent = value;
    });
  }

  final _$_frieghtAtom = Atom(name: '_Cart._frieght');

  @override
  double get _frieght {
    _$_frieghtAtom.reportRead();
    return super._frieght;
  }

  @override
  set _frieght(double value) {
    _$_frieghtAtom.reportWrite(value, super._frieght, () {
      super._frieght = value;
    });
  }

  final _$_CartActionController = ActionController(name: '_Cart');

  @override
  void addToCart(Product product) {
    final _$actionInfo =
        _$_CartActionController.startAction(name: '_Cart.addToCart');
    try {
      return super.addToCart(product);
    } finally {
      _$_CartActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
uniqueproducts: ${uniqueproducts},
cartValue: ${cartValue}
    ''';
  }
}

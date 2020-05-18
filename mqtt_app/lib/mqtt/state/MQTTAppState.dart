import 'package:flutter/cupertino.dart';

enum MQTTAppConnectionState { connected, disconnected, connecting }

class MQTTAppState with ChangeNotifier {
  MQTTAppConnectionState _appConnectionState =
      MQTTAppConnectionState.disconnected;
  String _receiveText = '';
  List<String> _histroyText = [];

  void setReceviedText(String text) {
    _receiveText = text;
    _histroyText.add(text);
    notifyListeners();
  }

  void setAppConnectionState(MQTTAppConnectionState state) {
    _appConnectionState = state;
    notifyListeners();
  }

  String get getRecivedText => _receiveText;
  List<String> get getHistoryText => _histroyText;
  MQTTAppConnectionState get getAppConnectionState => _appConnectionState;
}

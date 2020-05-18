import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mqtt_client/mqtt_client.dart';

import 'package:mqtt_app/mqtt/state/MQTTAppState.dart';

class MQTTManager {
  final MQTTAppState _currentState;
  MqttClient _client;
  final String _identifier;
  final String _host;
  final String _topic;
  MQTTManager(
      {@required String host,
      @required String topic,
      @required String identifier,
      @required MQTTAppState state})
      : _identifier = identifier,
        _host = host,
        _topic = topic,
        _currentState = state;

  void initializeMQTTClient() {
    _client = MqttClient(_host, _identifier);
    _client.port = 1883;
    _client.keepAlivePeriod = 20;
    _client.onDisconnected = onDisconnected;
    // _client.se = false;
    _client.logging(on: true);

    _client.onConnected = onConnected;
    _client.onSubscribed = onSubscribed;

    final MqttConnectMessage connMess = MqttConnectMessage()
        .withClientIdentifier(_identifier)
        .withWillTopic(
            'willtopic') // If you set this you must set a will message
        .withWillMessage('My Will message')
        .startClean() // Non persistent session for testing
        .withWillQos(MqttQos.atLeastOnce);
    print('EXAMPLE::Mosquitto client connecting....');
    _client.connectionMessage = connMess;
  }

  void connect() async {
    assert(_client != null);

    try {
      print('EXAMPLE :: START CLEINT CONNECTING');
      _currentState.setAppConnectionState(MQTTAppConnectionState.connecting);
      await _client.connect();
    } on Exception catch (e) {
      print("CLIENT EXCEPTION");
      disconnect();
    }
  }

  void disconnect() {
    print('Disconnected');
    _client.disconnect();
  }

  void publish(String message) {
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addString(message);
    _client.publishMessage(_topic, MqttQos.exactlyOnce, builder.payload);
  }

  void onSubscribed(String topic) {
    print("EXAMPLE :: SUBSCRIPTION CONFIRMED FOR TOPIC");
  }

  void onDisconnected() {
    print('EXAMPLE::OnDisconnected client callback - Client disconnection');
    if (_client.connectionStatus.disconnectionOrigin ==
        MqttDisconnectionOrigin.solicited)
      print('EXAMPLE::OnDisconnected callback is solicited, this is correct');

    _currentState.setAppConnectionState(MQTTAppConnectionState.disconnected);
  }

  void onConnected() {
    _currentState.setAppConnectionState(MQTTAppConnectionState.connected);
    print('EXAMPLE::Mosquitto client connected....');
    _client.subscribe(_topic, MqttQos.atLeastOnce);
    _client.updates.listen((List<MqttReceivedMessage<MqttMessage>> c) {
      final MqttPublishMessage recmess = c[0].payload;
      final String pt =
          MqttPublishPayload.bytesToStringAsString(recmess.payload.message);
      _currentState.setReceviedText(pt);
      print(
          'EXAMPLE::Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
      print('');
    });
    print(
        'EXAMPLE::OnConnected client callback - Client connection was sucessful');
  }
}

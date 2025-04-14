import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionService {
  ConnectionService._internal();

  static final ConnectionService _instance = ConnectionService._internal();

  factory ConnectionService() => _instance;

  final StreamController<bool> _connectionController = StreamController<bool>.broadcast();
  late final StreamSubscription<List<ConnectivityResult>> _subscription;

  bool _isConnected = true;

  bool get isConnected => _isConnected;

  Stream<bool> get connectionStream => _connectionController.stream;

  void initialize() {
    _subscription = Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result) {
      final isConnected = result.any((connectivity) => connectivity != ConnectivityResult.none);
      if (_isConnected != isConnected) {
        _isConnected = isConnected;
        _connectionController.add(_isConnected);
      }
    });
  }

  void dispose() {
    _subscription.cancel();
    _connectionController.close();
  }
}
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_consumer_app/core/enum/network_status.dart';
import 'package:flutter_consumer_app/features/network/domain/repository/network_repository.dart';

class NetworkRepositoryImpl implements NetworkRepository {
  @override
  Stream<NetworkStatus> get networkStatus async* {
    final Connectivity connectivity = Connectivity();
    await for (var result in connectivity.onConnectivityChanged) {
      yield _mapConnectivityResultToStatus(result);
    }
  }

  NetworkStatus _mapConnectivityResultToStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        return NetworkStatus.connected;
      case ConnectivityResult.none:
      default:
        return NetworkStatus.disconnected;
    }
  }
}

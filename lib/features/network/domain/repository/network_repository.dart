import '../../../../core/enum/network_status.dart';

abstract class NetworkRepository {
  Stream<NetworkStatus> get networkStatus;
}

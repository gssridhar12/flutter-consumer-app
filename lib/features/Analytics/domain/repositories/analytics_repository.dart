abstract class AnalyticsRepository {
  Future<void> trackEvent(String eventName, Map<String, dynamic> properties);
}

enum BaseUrlType { appServer, cmsGateway }

class Config {
  // Simple single-mode configuration for debug/dev usage.
  Duration httpSendTimeout = const Duration(milliseconds: 600000);
  Duration httpConnectTimeout = const Duration(milliseconds: 600000);
  Duration httpReceiveTimeout = const Duration(milliseconds: 600000);

  String get env => 'dev';

  String get appName => 'Tortoise UI';
}

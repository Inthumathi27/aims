abstract class BaseConfig {
  String get apiHost;
  bool get useHttps;
}

class DevConfig implements BaseConfig {
  String get apiHost => "https://dev.aims.officeos.in/";

  bool get useHttps => false;

}


class ProdConfig implements BaseConfig {
  String get apiHost => "https://aims.officeos.in/";


  bool get useHttps => true;


}

class Environment {
  static final Environment _singleton = Environment._internal();

  factory Environment() {
    return _singleton;
  }

  Environment._internal();

  static const String DEV = 'DEV';
  static const String PROD = 'PROD';

  BaseConfig? config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.PROD:
        return ProdConfig();
      default:
        return DevConfig();
    }
  }
}

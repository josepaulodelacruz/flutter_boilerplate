
import 'package:flutter_boilerplate/flavor_config.dart';
import 'package:flutter_boilerplate/main.dart';

void main () async {
  FlavorConfig(
    flavor: Flavor.prod,
    values: FlavorValues(
      appName: 'Flutter Boilerplate',
      baseUrl: '',
    ),
  );
  setupApp();
}

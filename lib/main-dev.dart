
import 'package:flutter_boilerplate/flavor_config.dart';
import 'package:flutter_boilerplate/main.dart';

void main () async {
  FlavorConfig(
    flavor: Flavor.test,
    values: FlavorValues(
      appName: 'Flutter Boilerplate Dev',
      baseUrl: '',
    ),
  );
  setupApp();
}
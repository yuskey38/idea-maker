// Flutter imports:
import 'package:collection/collection.dart';

enum Flavor {
  dev(endpoint: ''),
  stg(endpoint: ''),
  prod(endpoint: '');

  const Flavor({required this.endpoint});

  final String endpoint;

  Flavor get of {
    const env = String.fromEnvironment('FLAVOR');
    return Flavor.values.firstWhereOrNull((e) => e.name == env) ?? Flavor.dev;
  }
}

import 'package:mobile/models/address.dart';

class ServerConnection {
  const ServerConnection({
    required this.url,
  });

  final String url;
}

class Address extends ServerConnection {
  const Address({
    required super.url,
  });
}
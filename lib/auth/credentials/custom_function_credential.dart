import 'package:flutter_mongodb_realm_besaved/database/mongo_document.dart';

import 'stitch_credential.dart';

@deprecated
class FunctionCredential extends StitchCredential {
  final MongoDocument arguments;

  FunctionCredential(this.arguments);
}

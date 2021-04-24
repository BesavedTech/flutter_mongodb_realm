import 'database/database.dart';
import 'plugin.dart';

/// The MongoRealmClient is the entry point for working with data in MongoDB
/// remotely via Stitch.
class MongoRealmClient {
  MongoDatabase getDatabase(String name) {
    return MongoDatabase(name);
  }

  /// Calls the specified Stitch function
  Future callFunction(String name, {List? args, int? requestTimeout}) async {
    var result = await FlutterMongoRealm.callFunction(
      name,
      args: args,
      requestTimeout: requestTimeout,
    );

    return result;
  }
}

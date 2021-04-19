import 'dart:async';

import 'package:flutter_mongo_stitch_platform_interface_besaved/flutter_mongo_stitch_platform_interface_besaved.dart';
import 'package:flutter_mongodb_realm_besaved/stream_interop/stream_interop.dart';

import 'auth/core_realm_user.dart';

class FlutterMongoRealm {
  static Future connectToMongo(String appId) async {
    return await FlutterMongoStitchPlatform.instance.connectToMongo(appId);
  }

  static Future signInAnonymously() async {
    var details = await FlutterMongoStitchPlatform.instance.signInAnonymously();
    return CoreRealmUser.fromMap(details);
  }

  static Future<CoreRealmUser?> signInWithUsernamePassword(
      String username, String password) async {
    var details = await FlutterMongoStitchPlatform.instance
        .signInWithUsernamePassword(username, password);
    return CoreRealmUser.fromMap(details);
  }

  static Future<CoreRealmUser?> signInWithGoogle(String authCode) async {
    var details =
        await FlutterMongoStitchPlatform.instance.signInWithGoogle(authCode);
    return CoreRealmUser.fromMap(details);
  }

  static Future<CoreRealmUser?> signInWithFacebook(String accessToken) async {
    var details = await FlutterMongoStitchPlatform.instance
        .signInWithFacebook(accessToken);
    return CoreRealmUser.fromMap(details);
  }

  static Future<CoreRealmUser?> signInWithCustomJwt(String token) async {
    var details =
        await FlutterMongoStitchPlatform.instance.signInWithCustomJwt(token);
    return CoreRealmUser.fromMap(details);
  }

  static Future<CoreRealmUser?> signInWithCustomFunction(String json) async {
    var details = await FlutterMongoStitchPlatform.instance
        .signInWithCustomFunction(json);
    return CoreRealmUser.fromMap(details);
  }

  static Future logout() async {
    return await FlutterMongoStitchPlatform.instance.logout();
  }

  static Future getUserId() async {
    return await FlutterMongoStitchPlatform.instance.getUserId();
  }

  static Future getUserCustomData() async {
    return await FlutterMongoStitchPlatform.instance.getUserCustomData();
  }

  static Future<bool?> registerWithEmail(String email, String password) async {
    return await FlutterMongoStitchPlatform.instance
        .registerWithEmail(email, password);
  }

  static Future<CoreRealmUser?> getUser() async {
    var details = await FlutterMongoStitchPlatform.instance.getUser();
    return CoreRealmUser.fromMap(details);
  }

  static Future<bool?> sendResetPasswordEmail(String email) async {
    return await FlutterMongoStitchPlatform.instance
        .sendResetPasswordEmail(email);
  }

  ///

  static Future insertDocument({
    required String collectionName,
    required String databaseName,
    required Map<String, Object?> data,
  }) async {
    return await FlutterMongoStitchPlatform.instance.insertDocument(
      collectionName: collectionName,
      databaseName: databaseName,
      data: data as Map<String, Object>,
    );
  }

  static Future insertDocuments({
    required String collectionName,
    required String databaseName,
    required List<String> list,
  }) async {
    return await FlutterMongoStitchPlatform.instance.insertDocuments(
      collectionName: collectionName,
      databaseName: databaseName,
      list: list,
    );
  }

  static Future findDocuments(
      {String? collectionName,
      String? databaseName,
      dynamic filter,
      String? projection,
      int? limit,
      String? sort}) async {
    return await FlutterMongoStitchPlatform.instance.findDocuments(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
      limit: limit,
      sort: sort,
      projection: projection,
    );
  }

  static Future findFirstDocument(
      {String? collectionName,
      String? databaseName,
      dynamic filter,
      String? projection}) async {
    return await FlutterMongoStitchPlatform.instance.findFirstDocument(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
      projection: projection,
    );
  }

  static Future deleteDocument(
      {String? collectionName, String? databaseName, dynamic filter}) async {
    return await FlutterMongoStitchPlatform.instance.deleteDocument(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
    );
  }

  static Future deleteDocuments(
      {String? collectionName, String? databaseName, dynamic filter}) async {
    return await FlutterMongoStitchPlatform.instance.deleteDocuments(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
    );
  }

  static Future countDocuments(
      {String? collectionName, String? databaseName, dynamic filter}) async {
    return await FlutterMongoStitchPlatform.instance.countDocuments(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
    );
  }

  ///
  static Future updateDocument(
      {String? collectionName,
      String? databaseName,
      String? filter,
      String? update}) async {
    return await FlutterMongoStitchPlatform.instance.updateDocument(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
      update: update,
    );
  }

  static Future updateDocuments(
      {String? collectionName,
      String? databaseName,
      String? filter,
      String? update}) async {
    return await FlutterMongoStitchPlatform.instance.updateDocuments(
      collectionName: collectionName,
      databaseName: databaseName,
      filter: filter,
      update: update,
    );
  }

  static Stream watchCollection({
    required String collectionName,
    required String databaseName,
    List<String>? ids,
    String? filter,
    bool asObjectIds = true,
  }) {
    Stream nativeStream;
    nativeStream = StreamInterop.getNativeStream({
      "handler": "watchCollection",
      "db": databaseName,
      "collection": collectionName,
      "filter": filter,
      "ids": ids,
      "as_object_ids": asObjectIds,
    });

    return nativeStream;

    // continuous stream of events from platform side
//    return _streamsChannel.receiveBroadcastStream({
//      "handler": "watchCollection",
//      "db": databaseName,
//      "collection": collectionName,
//      "filter": filter,
//      "ids": ids,
//      "as_object_ids": asObjectIds,
//    });
  }

  static aggregate(
      {required String collectionName,
      required String databaseName,
      List<String>? pipeline}) async {
    return await FlutterMongoStitchPlatform.instance.aggregate(
      collectionName: collectionName,
      databaseName: databaseName,
      pipeline: pipeline,
    );
  }

  static Future callFunction(String name,
      {List? args, int? requestTimeout}) async {
    return await FlutterMongoStitchPlatform.instance.callFunction(
      name,
      args: args,
      requestTimeout: requestTimeout,
    );
  }

  static Stream authListener() {
    Stream nativeStream;

    nativeStream = StreamInterop.getNativeStream({
      "handler": "auth",
    });

    return nativeStream;

//    return _streamsChannel.receiveBroadcastStream({
//      "handler": "auth",
//    });
  }

  // WEB-specific helpers

  static Future setupWatchCollection(String collectionName, String databaseName,
      {List<String>? ids, bool? asObjectIds, String? filter}) async {
    await FlutterMongoStitchPlatform.instance.setupWatchCollection(
      collectionName,
      databaseName,
      ids: ids,
      asObjectIds: asObjectIds,
      filter: filter,
    );
  }
}

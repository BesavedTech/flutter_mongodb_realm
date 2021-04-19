package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.example.flutter_mongo_stitch.FlutterMongoStitchPlugin;
import app.loup.streams_channel.StreamsChannelPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    FlutterMongoStitchPlugin.registerWith(registry.registrarFor("com.example.flutter_mongo_stitch.FlutterMongoStitchPlugin"));
    StreamsChannelPlugin.registerWith(registry.registrarFor("app.loup.streams_channel.StreamsChannelPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}

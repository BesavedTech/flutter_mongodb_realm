import 'package:streams_channel_besaved/streams_channel_besaved.dart';

class StreamInterop {
  static StreamsChannel _streamsChannel =
      StreamsChannel('streams_channel_test');

  static Stream getNativeStream(args) {
    return _streamsChannel.receiveBroadcastStream(args);
  }
}

import 'package:xmtp_proto/xmtp_proto.dart';
import 'package:test/test.dart';

// This doesn't assert much: just enough to convince us
// that we rigged up code generators properly.
void main() {
  test('types are generated', () {
    Message msg = Message(v2: MessageV2());
    expect(msg.whichVersion(), Message_Version.v2,
        reason: "parameters should be set");
    expect(Message.fromBuffer(msg.writeToBuffer()), msg,
        reason: "codec should preserve the original");
  });

  test('client/server interfaces are generated', () {
    // ignore: unused_local_variable
    MessageApiClient client;
    // ignore: unused_local_variable
    MessageApiServiceBase server;
  });
}

package org.xmpt.proto;

import org.junit.Test;
import org.xmtp.proto.message.contents.MessageOuterClass.Message;

import static org.junit.Assert.*;

public class ProtoTest {
    @Test public void versionMethodReturnsTrue() {
        Message message = new MessageV2();
        assertTrue(true, message.hasV2());
    }
}

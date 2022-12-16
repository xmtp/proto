package org.xmpt.proto.message.contents;

import org.junit.Test;
import org.xmtp.proto.message.contents.*;
import static org.junit.Assert.*;

public class ProtoTest {
    @Test public void versionMethodReturnsTrue() {
        assertEqual(Content.Compression.COMPRESSION_DEFLATE.getNumber(), 0);
    }
}

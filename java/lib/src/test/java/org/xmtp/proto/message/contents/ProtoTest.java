package org.xmtp.proto.message.contents;

import org.junit.Test;
import org.xmtp.proto.message.contents.Content.Compression;

import static org.junit.Assert.*;

public class ProtoTest {
    @Test public void versionMethodReturnsTrue() {
        assertEqual(Compression.COMPRESSION_DEFLATE_VALUE, 0);
    }
}

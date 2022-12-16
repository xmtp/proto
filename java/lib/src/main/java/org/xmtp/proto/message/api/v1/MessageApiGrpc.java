package org.xmtp.proto.message.api.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 * <pre>
 * RPC
 * </pre>
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.45.1)",
    comments = "Source: message_api/v1/message_api.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class MessageApiGrpc {

  private MessageApiGrpc() {}

  public static final String SERVICE_NAME = "xmtp.message_api.v1.MessageApi";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse> getPublishMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Publish",
      requestType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest.class,
      responseType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse> getPublishMethod() {
    io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse> getPublishMethod;
    if ((getPublishMethod = MessageApiGrpc.getPublishMethod) == null) {
      synchronized (MessageApiGrpc.class) {
        if ((getPublishMethod = MessageApiGrpc.getPublishMethod) == null) {
          MessageApiGrpc.getPublishMethod = getPublishMethod =
              io.grpc.MethodDescriptor.<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Publish"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse.getDefaultInstance()))
              .setSchemaDescriptor(new MessageApiMethodDescriptorSupplier("Publish"))
              .build();
        }
      }
    }
    return getPublishMethod;
  }

  private static volatile io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> getSubscribeMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Subscribe",
      requestType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest.class,
      responseType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope.class,
      methodType = io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
  public static io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> getSubscribeMethod() {
    io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> getSubscribeMethod;
    if ((getSubscribeMethod = MessageApiGrpc.getSubscribeMethod) == null) {
      synchronized (MessageApiGrpc.class) {
        if ((getSubscribeMethod = MessageApiGrpc.getSubscribeMethod) == null) {
          MessageApiGrpc.getSubscribeMethod = getSubscribeMethod =
              io.grpc.MethodDescriptor.<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Subscribe"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope.getDefaultInstance()))
              .setSchemaDescriptor(new MessageApiMethodDescriptorSupplier("Subscribe"))
              .build();
        }
      }
    }
    return getSubscribeMethod;
  }

  private static volatile io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> getSubscribeAllMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "SubscribeAll",
      requestType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest.class,
      responseType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope.class,
      methodType = io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
  public static io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> getSubscribeAllMethod() {
    io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> getSubscribeAllMethod;
    if ((getSubscribeAllMethod = MessageApiGrpc.getSubscribeAllMethod) == null) {
      synchronized (MessageApiGrpc.class) {
        if ((getSubscribeAllMethod = MessageApiGrpc.getSubscribeAllMethod) == null) {
          MessageApiGrpc.getSubscribeAllMethod = getSubscribeAllMethod =
              io.grpc.MethodDescriptor.<org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "SubscribeAll"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope.getDefaultInstance()))
              .setSchemaDescriptor(new MessageApiMethodDescriptorSupplier("SubscribeAll"))
              .build();
        }
      }
    }
    return getSubscribeAllMethod;
  }

  private static volatile io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse> getQueryMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Query",
      requestType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest.class,
      responseType = org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest,
      org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse> getQueryMethod() {
    io.grpc.MethodDescriptor<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse> getQueryMethod;
    if ((getQueryMethod = MessageApiGrpc.getQueryMethod) == null) {
      synchronized (MessageApiGrpc.class) {
        if ((getQueryMethod = MessageApiGrpc.getQueryMethod) == null) {
          MessageApiGrpc.getQueryMethod = getQueryMethod =
              io.grpc.MethodDescriptor.<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest, org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Query"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse.getDefaultInstance()))
              .setSchemaDescriptor(new MessageApiMethodDescriptorSupplier("Query"))
              .build();
        }
      }
    }
    return getQueryMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static MessageApiStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<MessageApiStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<MessageApiStub>() {
        @java.lang.Override
        public MessageApiStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new MessageApiStub(channel, callOptions);
        }
      };
    return MessageApiStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static MessageApiBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<MessageApiBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<MessageApiBlockingStub>() {
        @java.lang.Override
        public MessageApiBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new MessageApiBlockingStub(channel, callOptions);
        }
      };
    return MessageApiBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static MessageApiFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<MessageApiFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<MessageApiFutureStub>() {
        @java.lang.Override
        public MessageApiFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new MessageApiFutureStub(channel, callOptions);
        }
      };
    return MessageApiFutureStub.newStub(factory, channel);
  }

  /**
   * <pre>
   * RPC
   * </pre>
   */
  public static abstract class MessageApiImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Publish messages to the network
     * </pre>
     */
    public void publish(org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getPublishMethod(), responseObserver);
    }

    /**
     * <pre>
     * Subscribe to a stream of new envelopes matching a predicate
     * </pre>
     */
    public void subscribe(org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSubscribeMethod(), responseObserver);
    }

    /**
     * <pre>
     * Subscribe to a stream of all messages
     * </pre>
     */
    public void subscribeAll(org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSubscribeAllMethod(), responseObserver);
    }

    /**
     * <pre>
     * Query the store for messages
     * </pre>
     */
    public void query(org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getQueryMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getPublishMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest,
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse>(
                  this, METHODID_PUBLISH)))
          .addMethod(
            getSubscribeMethod(),
            io.grpc.stub.ServerCalls.asyncServerStreamingCall(
              new MethodHandlers<
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest,
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>(
                  this, METHODID_SUBSCRIBE)))
          .addMethod(
            getSubscribeAllMethod(),
            io.grpc.stub.ServerCalls.asyncServerStreamingCall(
              new MethodHandlers<
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest,
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>(
                  this, METHODID_SUBSCRIBE_ALL)))
          .addMethod(
            getQueryMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest,
                org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse>(
                  this, METHODID_QUERY)))
          .build();
    }
  }

  /**
   * <pre>
   * RPC
   * </pre>
   */
  public static final class MessageApiStub extends io.grpc.stub.AbstractAsyncStub<MessageApiStub> {
    private MessageApiStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected MessageApiStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new MessageApiStub(channel, callOptions);
    }

    /**
     * <pre>
     * Publish messages to the network
     * </pre>
     */
    public void publish(org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getPublishMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Subscribe to a stream of new envelopes matching a predicate
     * </pre>
     */
    public void subscribe(org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> responseObserver) {
      io.grpc.stub.ClientCalls.asyncServerStreamingCall(
          getChannel().newCall(getSubscribeMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Subscribe to a stream of all messages
     * </pre>
     */
    public void subscribeAll(org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> responseObserver) {
      io.grpc.stub.ClientCalls.asyncServerStreamingCall(
          getChannel().newCall(getSubscribeAllMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Query the store for messages
     * </pre>
     */
    public void query(org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest request,
        io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getQueryMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   * <pre>
   * RPC
   * </pre>
   */
  public static final class MessageApiBlockingStub extends io.grpc.stub.AbstractBlockingStub<MessageApiBlockingStub> {
    private MessageApiBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected MessageApiBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new MessageApiBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Publish messages to the network
     * </pre>
     */
    public org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse publish(org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getPublishMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Subscribe to a stream of new envelopes matching a predicate
     * </pre>
     */
    public java.util.Iterator<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> subscribe(
        org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest request) {
      return io.grpc.stub.ClientCalls.blockingServerStreamingCall(
          getChannel(), getSubscribeMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Subscribe to a stream of all messages
     * </pre>
     */
    public java.util.Iterator<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope> subscribeAll(
        org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest request) {
      return io.grpc.stub.ClientCalls.blockingServerStreamingCall(
          getChannel(), getSubscribeAllMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Query the store for messages
     * </pre>
     */
    public org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse query(org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getQueryMethod(), getCallOptions(), request);
    }
  }

  /**
   * <pre>
   * RPC
   * </pre>
   */
  public static final class MessageApiFutureStub extends io.grpc.stub.AbstractFutureStub<MessageApiFutureStub> {
    private MessageApiFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected MessageApiFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new MessageApiFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Publish messages to the network
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse> publish(
        org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getPublishMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Query the store for messages
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse> query(
        org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getQueryMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_PUBLISH = 0;
  private static final int METHODID_SUBSCRIBE = 1;
  private static final int METHODID_SUBSCRIBE_ALL = 2;
  private static final int METHODID_QUERY = 3;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final MessageApiImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(MessageApiImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_PUBLISH:
          serviceImpl.publish((org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishRequest) request,
              (io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.PublishResponse>) responseObserver);
          break;
        case METHODID_SUBSCRIBE:
          serviceImpl.subscribe((org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeRequest) request,
              (io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>) responseObserver);
          break;
        case METHODID_SUBSCRIBE_ALL:
          serviceImpl.subscribeAll((org.xmtp.proto.message.api.v1.MessageApiOuterClass.SubscribeAllRequest) request,
              (io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.Envelope>) responseObserver);
          break;
        case METHODID_QUERY:
          serviceImpl.query((org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryRequest) request,
              (io.grpc.stub.StreamObserver<org.xmtp.proto.message.api.v1.MessageApiOuterClass.QueryResponse>) responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  private static abstract class MessageApiBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    MessageApiBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return org.xmtp.proto.message.api.v1.MessageApiOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("MessageApi");
    }
  }

  private static final class MessageApiFileDescriptorSupplier
      extends MessageApiBaseDescriptorSupplier {
    MessageApiFileDescriptorSupplier() {}
  }

  private static final class MessageApiMethodDescriptorSupplier
      extends MessageApiBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    MessageApiMethodDescriptorSupplier(String methodName) {
      this.methodName = methodName;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (MessageApiGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new MessageApiFileDescriptorSupplier())
              .addMethod(getPublishMethod())
              .addMethod(getSubscribeMethod())
              .addMethod(getSubscribeAllMethod())
              .addMethod(getQueryMethod())
              .build();
        }
      }
    }
    return result;
  }
}

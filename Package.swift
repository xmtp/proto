// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XMTPProto",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "XMTPProto",
            targets: ["XMTPProto"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/grpc/grpc-swift", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "XMTPProto",
            dependencies: [.product(name: "SwiftProtobuf", package: "swift-protobuf")],
            path: "swift/XMTPProto"
        ),
				.target(
						name: "XMTPProtoGRPC",
						dependencies: [.product(name: "SwiftProtobuf", package: "swift-protobuf"), .product(name: "GRPC", package: "grpc-swift")],
						path: "swift/XMTPProtoGRPC"
				),
        .testTarget(
            name: "XMTPProtoTests",
            dependencies: ["XMTPProto"],
            path: "dev/swift",
            exclude: [
                "protoc/protoc.sh",
                "protoc/Dockerfile",
                "generate",
            ]
        ),
    ]
)

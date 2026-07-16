// swift-tools-version:5.9
// Released manifest for the Swift package at moq-dev/moq-swift. The
// source-of-truth template lives at swift/Package.swift.template in
// moq-dev/moq; swift/scripts/package.sh substitutes the version and
// xcframework SHA-256 at release time.

import PackageDescription

let package = Package(
    name: "Moq",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "Moq", targets: ["Moq"])],
    targets: [
        .target(name: "Moq", dependencies: ["MoqFFI"], path: "Sources/Moq"),
        .target(name: "MoqFFI", dependencies: ["MoqFFIBinary"], path: "Sources/MoqFFI"),
        .binaryTarget(
            name: "MoqFFIBinary",
            url: "https://github.com/moq-dev/moq/releases/download/moq-ffi-v0.2.31/MoqFFI.xcframework.zip",
            checksum: "a1f1621dba63ba33b20c405fa0b79b6bc9ee3540d92f7140e52ff0193e9076ed"
        ),
        .testTarget(name: "MoqTests", dependencies: ["Moq"], path: "Tests/MoqTests"),
    ]
)

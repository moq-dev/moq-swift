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
            url: "https://github.com/moq-dev/moq/releases/download/moq-ffi-v0.2.17/MoqFFI.xcframework.zip",
            checksum: "beaae83756f8d6e872579c26290ca12144e16e16edb2a97568944d9699be5894"
        ),
        .testTarget(name: "MoqTests", dependencies: ["Moq"], path: "Tests/MoqTests"),
    ]
)

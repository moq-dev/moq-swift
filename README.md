# Moq (Swift Package)

Ergonomic Swift wrapper for [Media over QUIC](https://github.com/moq-dev/moq):
async/await, `AsyncSequence` streams, and Swift-native names over the raw
[moq-ffi](https://github.com/moq-dev/moq-swift-ffi) bindings.

Auto-generated mirror; source, issues, and pull requests live in
[moq-dev/moq](https://github.com/moq-dev/moq). This repo only carries tagged
Swift Package Manager releases, versioned independently of the moq-ffi crate.

## Install

```swift
.package(url: "https://github.com/moq-dev/moq-swift", from: "0.4.0"),
```

The raw `MoqFFI` bindings (and the prebuilt XCFramework) are pulled in
transitively from [moq-dev/moq-swift-ffi](https://github.com/moq-dev/moq-swift-ffi).

See [moq-dev/moq/swift/README.md](https://github.com/moq-dev/moq/blob/main/swift/README.md)
for usage, local development, and the release process.

Licensed under MIT OR Apache-2.0.

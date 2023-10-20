// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "WebRTC",
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-7/WebRTC.xcframework.zip",
            checksum: "efe023ac5c2930e6a26c649f36de6b1c3a1a28cad0a6cde4e54ab885db109f90"
        )
    ]
)

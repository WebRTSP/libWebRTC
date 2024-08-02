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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched-1/WebRTC.xcframework.zip",
            checksum: "a4d58cb231e554b79d3500b66cc5fdea2065dcfd5470885bb099602a9b803717"
        )
    ]
)

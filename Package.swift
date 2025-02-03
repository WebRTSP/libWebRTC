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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched-7/WebRTC.xcframework.zip",
            checksum: "305519a0a07d88a0bdd9323630cf95a4584b075587138b2aed0d6622ab7a8210"
        )
    ]
)

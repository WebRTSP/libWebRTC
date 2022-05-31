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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-1/WebRTC.xcframework.zip",
            checksum: "2f2fc31f865f2612a28060585f84d60050053d98aa84deebb23c111ce35e49c6"
        )
    ]
)

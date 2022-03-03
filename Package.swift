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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m98/WebRTC.xcframework.zip",
            checksum: "71a9d523653e95e8fd7209f1a2d15fa120b9c85318acbcb3b901bf520274ce27"
        )
    ]
)

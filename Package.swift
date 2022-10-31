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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-4/WebRTC.xcframework.zip",
            checksum: "743678b037f5c5654fd10ae4dab2adebd150971fd2dde05fd1df397a1eeead2b"
        )
    ]
)

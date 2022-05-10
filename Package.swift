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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m87-patched/WebRTC.xcframework.zip",
            checksum: "459edfbf7906b38bba1fb2eb1add2ed2d0ac9a5a2fe9bf30ed4cc48c36347abb"
        )
    ]
)

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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m124-patched/WebRTC.xcframework.zip",
            checksum: "2452b9d97c875846e878dbaec591fcb937d6095f96c4a3665592c40efc8be81c"
        )
    ]
)

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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched-3/WebRTC.xcframework.zip",
            checksum: "e4def86febafc38417fe176ba1fdc822f4c1928d7a364eac21d66bc34d457263"
        )
    ]
)

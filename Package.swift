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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m127-patched-6/WebRTC.xcframework.zip",
            checksum: "4d605d4bc75a12be782dbb17109dc0bae17159ede8340edd5f4b0da53fe0981a"
        )
    ]
)

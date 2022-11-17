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
            url: "https://github.com/WebRTSP/libWebRTC/releases/download/m102-patched-5/WebRTC.xcframework.zip",
            checksum: "82274dfd197459063d4735ffe4cf906ee4646e7ce07ce5215a5390f16cb3a79c"
        )
    ]
)

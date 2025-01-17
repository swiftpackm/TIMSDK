// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TIMSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TIMSDK",
            targets: ["TIMSDK", "ImSDK_Plus_Swift", "TPush"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TIMSDK"),
        .binaryTarget(name: "ImSDK_Plus_Swift", path: "./Frameworks/ImSDK_Plus_Swift.xcframework"),
        .binaryTarget(name: "TPush",
                      url: "https://im.sdk.qcloud.com/download/tuiplugin/8.3.6498/ios/TPush_8.3.6498.xcframework.zip",
                      checksum: "ea1324b532e7af264f5bc716b9b68276afde9c77d0d246409057be2715d6f932")

    ]
)

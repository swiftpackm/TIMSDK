// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TIMSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TIMSDK",
            targets: ["TIMSDK", "ImSDK_Plus_Swift", "TIMPush"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TIMSDK"),
        .binaryTarget(name: "ImSDK_Plus_Swift", path: "./Frameworks/ImSDK_Plus_Swift.xcframework"),
        .binaryTarget(name: "TIMPush",
                      url: "https://im.sdk.qcloud.com/download/tuiplugin/8.3.6498/ios/TPush_8.3.6498.xcframework.zip",
                      checksum: "f7bb45113f605f7711fa42affd7e33d6")

    ]
)

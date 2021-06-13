// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MMPages",
    platforms: [
        .iOS(.v14),
        .watchOS(.v7),
        .tvOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "MMPages",
            targets: ["MMPages"]),
    ],
    dependencies: [
        .package(name: "MMCommon", url: "https://github.com/lambdadigamma/mmcommon-ios", from: "0.0.1"),
        .package(name: "ModernNetworking", url: "https://github.com/lambdadigamma/modernnetworking", from: "0.1.1")
    ],
    targets: [
        .target(
            name: "MMPages",
            dependencies: ["MMCommon", "ModernNetworking"]),
        .testTarget(
            name: "MMPagesTests",
            dependencies: ["MMPages"]),
    ]
)

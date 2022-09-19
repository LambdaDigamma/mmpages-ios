// swift-tools-version:5.5

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
        .package(name: "Core", path: "./../Core"),
        .package(name: "ModernNetworking", url: "https://github.com/lambdadigamma/modernnetworking", from: "0.1.1"),
        .package(name: "ProseMirror", url: "https://github.com/lambdadigamma/swift-prosemirror", .upToNextMajor(from: "0.0.1")),
        .package(name: "MediaLibraryKit", url: "https://github.com/LambdaDigamma/MediaLibraryKit", .upToNextMajor(from: "0.0.3")),
        .package(url: "https://github.com/SvenTiigi/YouTubePlayerKit.git", from: "1.1.1")
    ],
    targets: [
        .target(
            name: "MMPages",
            dependencies: ["Core", "ModernNetworking", "ProseMirror", "MediaLibraryKit", "YouTubePlayerKit"]),
        .testTarget(
            name: "MMPagesTests",
            dependencies: ["MMPages"]),
    ]
)

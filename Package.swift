// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "MMPages",
    platforms: [
        .iOS(.v15),
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
        .package(url: "https://github.com/SvenTiigi/YouTubePlayerKit.git", from: "1.1.1"),
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.10.0")),
        .package(url: "https://github.com/hmlongco/Factory", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .target(
            name: "MMPages",
            dependencies: [
                "Core",
                "ModernNetworking",
                "ProseMirror",
                "MediaLibraryKit",
                "YouTubePlayerKit",
                .product(name: "GRDB", package: "GRDB.swift"),
                .product(name: "Factory", package: "Factory")
            ]
        ),
        .testTarget(
            name: "MMPagesTests",
            dependencies: ["MMPages"],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)

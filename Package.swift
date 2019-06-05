// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "MUCore",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "MUCore",
            targets: ["MUCore"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MUCore",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "MUCoreTests",
            dependencies: ["MUCore"],
            path: "Tests"
        ),
    ]
)

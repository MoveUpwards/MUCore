// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "MUCore",
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

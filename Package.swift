// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BeakArrow",
    products: [
        .executable(
            name: "BeakArrow",
            targets: ["BeakArrow"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/vknabel/ArrowKit.git", .branch("master")),
        .package(url: "https://github.com/yonaskolb/Beak.git", .exact("0.4.0")),
        .package(url: "https://github.com/kylef/PathKit.git", from: "0.9.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "BeakArrow",
            dependencies: ["ArrowKit", "BeakCore", "PathKit"]
        ),
    ]
)

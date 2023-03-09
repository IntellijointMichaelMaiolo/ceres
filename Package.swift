// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ceres",
    products: [
        .library(
            name: "ceres",
            targets: ["ceres"]),
    ],
    dependencies: [
    ],
    targets: [
      .binaryTarget(name: "ceres", path: "ceres.xcframework")
    ]
)

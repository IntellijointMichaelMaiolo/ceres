// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ceres-target",
    products: [
        .library(
            name: "ceres-target",
            targets: ["ceres-target"]),
    ],
    dependencies: [
    ],
    targets: [
      .target(
        name: "ceres-target",
        dependencies: ["ceres"],
        path: "Sources/ceres",
        linkerSettings: [
          .linkedLibrary("c++"),
          .linkedLibrary("Eigen")
        ]
      ),
      .binaryTarget(name: "ceres", path: "ceres.xcframework")
    ]
)

// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Spine",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Spine",
            targets: ["Spine"]),
    ],
    dependencies: [
        .package(url: "https://github.com/antitypical/Result.git", from: "4.0.0"),
        .package(url: "https://github.com/Truba/SwiftyJSON.git", from: "5.0.0"),
        .package(url: "https://github.com/Truba/BrightFutures.git",  from: "9.0.0")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Spine",
            dependencies: ["BrightFutures", "SwiftyJSON", "Result"],
            path: "Sources"
            ),
        .testTarget(
            name: "SpineTests",
            dependencies: ["Spine"]),
    ]
)

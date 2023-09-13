// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreLockApi",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CoreLockApi",
            targets: ["CoreLockApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/cryptoner-space/blockchain-sdk-swift.git", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CoreLockApi",
            dependencies: [
                .product(name: "BlockchainSdk", package: "blockchain-sdk-swift"),
            ]
        )
    ]
)

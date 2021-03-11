// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ComposableLocalSearch",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "ComposableLocalSearch", targets: ["ComposableLocalSearch"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.16.0")
    ],
    targets: [
        .target(name: "ComposableLocalSearch", dependencies: [
            .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
        ]),
        .testTarget(name: "ComposableLocalSearchTests", dependencies: ["ComposableLocalSearch"]),
    ]
)

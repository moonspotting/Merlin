// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Merlin",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "Merlin",
            targets: ["Merlin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/archivable/package.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Merlin",
            dependencies: [
                .product(name: "Archivable", package: "package")],
            path: "Sources"),
        .testTarget(
            name: "Tests",
            dependencies: ["Merlin"],
            path: "Tests"),
    ]
)

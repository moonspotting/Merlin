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
    targets: [
        .target(
            name: "Merlin",
            path: "Sources"),
        .testTarget(
            name: "Tests",
            dependencies: ["Merlin"],
            path: "Tests",
            resources: [.process("Resources")]),
    ]
)

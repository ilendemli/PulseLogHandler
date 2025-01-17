// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "PulseLogHandler",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macOS(.v13),
        .watchOS(.v9)
    ],
    products: [
        .library(name: "PulseLogHandler", targets: ["PulseLogHandler"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.5.2"),
        .package(url: "https://github.com/ilendemli/pulse-spm.git", from: "5.0.0")
    ],
    targets: [
        .target(name: "PulseLogHandler", dependencies: [
            .product(name: "Pulse", package: "pulse-spm"),
            .product(name: "Logging", package: "swift-log")
        ]),
        .testTarget(name: "PulseLogHandlerTests", dependencies: ["PulseLogHandler"])
    ]
)

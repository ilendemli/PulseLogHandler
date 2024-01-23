// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "PulseLogHandler",
    platforms: [
        .iOS(.v14),
        .tvOS(.v15),
        .macOS(.v12),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "PulseLogHandler", targets: ["PulseLogHandler"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.5.2"),
        .package(url: "https://github.com/ilendemli/pulse-spm.git", from: "4.0.0")
    ],
    targets: [
        .target(name: "PulseLogHandler", dependencies: [
            .product(name: "Pulse", package: "pulse-spm"),
            .product(name: "Logging", package: "swift-log")
        ]),
        .testTarget(name: "PulseLogHandlerTests", dependencies: ["PulseLogHandler"])
    ]
)

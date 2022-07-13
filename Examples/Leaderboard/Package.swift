// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Leaderboard",
    platforms: [
        .macOS(.v10_15), .iOS(.v10), .tvOS(.v10)
    ],
    products: [
        .executable(name: "Leaderboard", targets: ["Leaderboard"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pvzig/SlackKit", .revision("87af97c0099e2383ca8e08e3f62052d725783ee6"))
    ],
    targets: [
        .target(name: "Leaderboard",
        dependencies: ["SlackKit"],
                path: "Leaderboard/Sources")
    ]
)

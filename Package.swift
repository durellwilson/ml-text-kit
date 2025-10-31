// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MLTextKit",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "MLTextKit", targets: ["MLTextKit"])
    ],
    targets: [
        .target(name: "MLTextKit")
    ]
)

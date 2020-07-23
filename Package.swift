// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "JavaScriptCore",
    products: [
        .library(name: "SJavaScriptCore", targets: ["SJavaScriptCore"]),
    ],
    dependencies: [
        .package(name: "JavaScript", url: "https://github.com/tris-code/javascript.git", .branch("master")),

        .package(name: "Test",
            url: "https://github.com/tris-code/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "CJavaScriptCore",
            dependencies: []),
        .target(
            name: "SJavaScriptCore",
            dependencies: ["CJavaScriptCore", "JavaScript"]),
        .testTarget(
            name: "SJavaScriptCoreTests",
            dependencies: ["Test", "SJavaScriptCore"]),
    ]
)

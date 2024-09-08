// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FacebookSdkPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FacebookSdkPlugin",
            targets: ["FacebookSdkPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FacebookSdkPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FacebookSdkPlugin"),
        .testTarget(
            name: "FacebookSdkPluginTests",
            dependencies: ["FacebookSdkPlugin"],
            path: "ios/Tests/FacebookSdkPluginTests")
    ]
)
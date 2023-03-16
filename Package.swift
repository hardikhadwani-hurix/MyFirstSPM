// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KitabooReaderSDKSPM",
    platforms: [.iOS("13.0")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KitabooReaderSDKSPM",
            targets: ["KitabooReaderSDKSPM","Kitaboo_Reader_SDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "Kitaboo_Reader_SDK", url: "https://github.com/hardikhadwani-hurix/KitabooReaderSDK/releases/download/1.0/Kitaboo_Reader_SDK.xcframework.zip", checksum: "01680833a5571693615f13a70c1aff55f528c184525a40cdc847d6edb577520b"),
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "KitabooReaderSDKSPM",
            dependencies: []),
        .testTarget(
            name: "KitabooReaderSDKSPMTests",
            dependencies: ["KitabooReaderSDKSPM"]),
    ]
)

// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swifttest",
    products: [
        // Products are the end result of a package and can be used by other packages.
        // A product can be a library, an executable, or a system library.
        // Here we define a library product called "cxxLibrary".
        // The library product depends on the "cxxLibrary" target defined in the same package.
       .library(
            name: "cxxLibrary",
            targets: ["cxxLibrary"]),
        // We can also define other products here, such as executables or system libraries. 
        // For example, we could define an executable product called "swifttest" that depends on the "swifttest" target.
        .executable(
            name: "swifttest", 
            targets: ["swifttest"]
          )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swifttest",
            dependencies: ["cxxLibrary"],
            swiftSettings: [.interoperabilityMode(.Cxx)]),
        .target(name: "cxxLibrary")
    ]
)

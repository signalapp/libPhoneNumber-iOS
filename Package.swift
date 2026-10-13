// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "libPhoneNumber",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v9),
    ],
    products: [
        .library(name: "libPhoneNumber", targets: ["libPhoneNumber"]),
    ],
    targets: [
        .target(
            name: "libPhoneNumber",
            path: "libPhoneNumber",
            exclude: ["NBPhoneNumberMetaData.json"],
            resources: [.copy("NBPhoneNumberMetaData.plist")],
            publicHeadersPath: ".",
            cSettings: [.headerSearchPath("Internal")]
        ),
    ]
)

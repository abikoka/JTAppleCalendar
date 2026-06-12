// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "JTAppleCalendar",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
    ],
    products: [
        .library(name: "JTAppleCalendar", targets: ["JTAppleCalendar"]),
    ],
    targets: [
        .target(
            name: "JTAppleCalendar",
            path: "Sources",
            exclude: [
                "Info-iOS.plist",
                "Info-tvOS.plist",
                "JTAppleCalendar.h",
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)

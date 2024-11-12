// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "YooKassaPayments",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "YooKassaPayments",
            targets: ["YooKassaPaymentsTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/appmetrica/appmetrica-sdk-ios", .upToNextMajor(from: "5.8.0")),
    ],
    targets: [
        .target(
            name: "YooKassaPaymentsTarget",
            dependencies: [
                .target(name: "YooKassaPaymentsWrapper")
            ],
            path: "SwiftPM-PlatformExclude/YooKassaPaymentsWrap"
        ),
        .target(
            name: "YooKassaPaymentsWrapper",
            dependencies: [
                .target(name: "YooKassaPayments"),
                .product(name: "AppMetricaCore", package: "appmetrica-sdk-ios")
            ],
            path: "YooKassaPaymentsWrapper"
        ),
        .binaryTarget(
            name: "YooKassaPayments",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooKassaPayments.xcframework.zip",
            checksum: "cda6fa8a0f7b768336de3ad39831f9e3ed4b6594f48493671aa998fdbb839c1f"
        )
    ]
)

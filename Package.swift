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
            targets: ["YooKassaPayments"]),
    ],
    dependencies: [
        .package(url: "https://github.com/appmetrica/appmetrica-sdk-ios", .upToNextMajor(from: "5.8.0")),
    ],
    targets: [
        .binaryTarget(
            name: "YooKassaPaymentsBinary",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooKassaPayments.xcframework.zip",
            checksum: "cda6fa8a0f7b768336de3ad39831f9e3ed4b6594f48493671aa998fdbb839c1f"
        ),
        .target(
            name: "YooKassaPayments",
            dependencies: [
                .target(name: "YooKassaPaymentsBinary"),
                .product(name: "AppMetricaCore", package: "appmetrica-sdk-ios"),
            ],
        )
    ]
)

// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "YooKassaPayments",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "YooKassaPayments",
            targets: ["YooKassaPaymentsTarget"])
    ],
//    dependencies: [
//        .package(url: "https://github.com/appmetrica/appmetrica-sdk-ios", .upToNextMajor(from: "5.8.0")),
//    ],
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
                .target(name: "YooMoneyUI"),
                .target(name: "FMobileSdk"),
                .target(name: "FunctionalSwift"),
                .target(name: "MoneyAuth"),
                .target(name: "SPaySdk"),
                .target(name: "YooKassaPaymentsApi"),
                .target(name: "YooKassaWalletApi"),
                .target(name: "YooMoneyCoreApi"),
                .target(name: "YooMoneySessionProfiler")
            ],
            path: "YooKassaPaymentsWrapper"
        ),
        .binaryTarget(
            name: "YooKassaPayments",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooKassaPayments.xcframework.zip",
            checksum: "a3f2ab1edf9a6f8d49fb575b4397449a8b2c56dbb70580f5867cb6f7c921f6c0"
        ),
        .binaryTarget(
            name: "YooMoneyUI",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooMoneyUI.xcframework.zip",
            checksum: "d4d3683e3d9bd2b5a3b1b57008ca7b73e2f4917bd7334696f765a4e3f0b2f0a1"
        ),
        .binaryTarget(
            name: "FMobileSdk",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/FMobileSdk.xcframework.zip",
            checksum: "86a5f3c469be2dbfa7d4570f097b1252011e174051faba9ff8bf03d809e3c43e"
        ),
        .binaryTarget(
            name: "FunctionalSwift",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/FunctionalSwift.xcframework.zip",
            checksum: "b7301dd8a03a97339ab35588f593ae4fe4ba6ca1d0a10f4d91af47d8a16b2028"
        ),
        .binaryTarget(
            name: "MoneyAuth",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/MoneyAuth.xcframework.zip",
            checksum: "0359ebd33d7c872939ea5862dd572947ec0c742677884046fffa96db32cd5083"
        ),
        .binaryTarget(
            name: "SPaySdk",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/SPaySdk.xcframework.zip",
            checksum: "2bfe01ca1ad61e314adcf936247ce6410fcb35bed913bb178088532f85a84eb9"
        ),
        .binaryTarget(
            name: "YooKassaPaymentsApi",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooKassaPaymentsApi.xcframework.zip",
            checksum: "4d02520fe6a5df7fbda9fa4fe13dd7fd80a6b310efa9789637a1e0eee5808b5a"
        ),
        .binaryTarget(
            name: "YooKassaWalletApi",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooKassaWalletApi.xcframework.zip",
            checksum: "d1df83057cc92576a1307c41a462b6a6a5a971e18df0f51b5b0332df55d54151"
        ),
        .binaryTarget(
            name: "YooMoneyCoreApi",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooMoneyCoreApi.xcframework.zip",
            checksum: "63aeaa928cfe0b3ce86c961604569697153f74afc40157581938cafa28f78b3d"
        ),
        .binaryTarget(
            name: "YooMoneySessionProfiler",
            url: "https://github.com/c-villain/YooKassaPayments/releases/download/7.2.0/YooMoneySessionProfiler.xcframework.zip",
            checksum: "8bdb078e47acf61e3faef36c48d3074a730f8935258d96df1495f774eff1c3c3"
        ),
    ]
)

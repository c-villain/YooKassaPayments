# YooKassaPayments

[![Latest release](https://img.shields.io/github/v/release/c-villain/YooKassaPayments?color=brightgreen&label=version)](https://github.com/c-villain/YooKassaPayments/releases/latest)
[![](https://img.shields.io/badge/SPM-supported-DE5C43.svg?color=brightgreen)](https://swift.org/package-manager/)

[![contact: @lexkraev](https://img.shields.io/badge/contact-%40lexkraev-blue.svg?style=flat)](https://t.me/lexkraev)
[![Telegram Group](https://img.shields.io/endpoint?color=neon&style=flat-square&url=https%3A%2F%2Ftg.sumanjay.workers.dev%2Fswiftui_dev)](https://telegram.dog/swiftui_dev)

Binary Framework as Swift Package with [YooKassaPayments](https://git.yoomoney.ru/projects/SDK/repos/yookassa-payments-swift).

## Requirements

- iOS 14.0

## Swift Package Manager

To integrate YooKassaPayments into your project using SwiftPM do this 👇🏻

- File > Swift Packages > Add Package Dependency
- Add `https://github.com/c-villain/YooKassaPayments.git`
- Select "Up to Next Major" with "7.2.0"

or add the following code to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/c-villain/YooKassaPayments", from: "7.2.0"),
],
```
or via [XcodeGen](https://github.com/yonaskolb/XcodeGen) insert into your `project.yml`:

```yaml
name: YourProjectName
options:
  deploymentTarget:
    iOS: 14.0
packages:
  YooKassaPayments:
    url: https://github.com/c-villain/YooKassaPayments
    from: 7.2.0
targets:
  YourTarget:
    type: application
    ...
    dependencies:
       - package: YooKassaPayments
```

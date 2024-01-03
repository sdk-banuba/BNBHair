// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.10.0-24-gb831098a87"

let package = Package(
    name: "BNBHair",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHair",
            targets: [
                "BNBHair",
                "BNBHair_BNBSdkCore",
                "BNBHair_BNBEffectPlayer",
                "BNBHair_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBHair",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.10.0-24-gb831098a87/BNBHair.zip",
            checksum: "2876ce9eb56f3f837faa22a8b6602fc0d6e473d548ad26a9047106efdb75e3a1"
        ),
        .target(
            name: "BNBHair_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBHair_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBHair_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)

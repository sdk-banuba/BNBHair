// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-188-g3e9bf00b67"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-188-g3e9bf00b67/BNBHair.zip",
            checksum: "6a7cc7695dcb188d0a3ddaf3dd3ad859b625a080547ebc6fe8645fe02bb10283"
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

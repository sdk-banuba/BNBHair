// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-35-g200bb3db4"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-35-g200bb3db4/BNBHair.zip",
            checksum: "a305587145f44eb61ab8f1062c30ea54c89a33aa19347c34d8fa677ca7a0c6a3"
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

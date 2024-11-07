// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-175-g35e1b614c0"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-175-g35e1b614c0/BNBHair.zip",
            checksum: "a22d38142111b10f1e28eb7770d0dac1fe64e754abbe1f8e380b7c2acaff3963"
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

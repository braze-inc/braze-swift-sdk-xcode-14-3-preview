// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v13),
    .tvOS(.v11)
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
    ),
    .library(
      name: "BrazeUI",
      targets: ["BrazeUI"]
    ),
    .library(
      name: "BrazeLocation",
      targets: ["BrazeLocation"]
    ),
    .library(
      name: "BrazeNotificationService",
      targets: ["BrazeNotificationService"]
    ),
    .library(
      name: "BrazePushStory",
      targets: ["BrazePushStory"]
    ),
    .library(
      name: "BrazeKitCompat",
      targets: ["BrazeKitCompat"]
    ),
    .library(
      name: "BrazeUICompat",
      targets: ["BrazeUICompat"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.2"),
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.12.0/BrazeKit.zip",
      checksum: "d1b08c7c705b43a3c2a3d7e226955c054efaf05919f423a45794e788890744b1"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [
        .process("Resources"),
      ]
    ),
    .target(
      name: "BrazeUI",
      dependencies: [
        .target(name: "BrazeKit"),
      ],
      resources: [.process("Resources")]
    ),
    .binaryTarget(
      name: "BrazeLocation",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.12.0/BrazeLocation.zip",
      checksum: "e81e98b91c7ef867771a9537240b7ebdddf514d379e6ac7afa94dde492069986"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.12.0/BrazeNotificationService.zip",
      checksum: "e0c0c79557ca7d5eaa7b262de8a9b1bb440c9d03280829b5d6fddd0584e1a26e"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.12.0/BrazePushStory.zip",
      checksum: "48a0b26ba39ae14164d7a4f6c150bcc2ca6d9841c6b561095bc0200afac92779"
    ),
    .target(
      name: "BrazeKitCompat",
      dependencies: [
        .target(name: "BrazeKit"),
        .target(name: "BrazeLocation"),
      ]
    ),
    .target(
      name: "BrazeUICompat",
      dependencies: [
        "BrazeKitCompat",
        "SDWebImage",
      ],
      resources: [
        .process("ABKNewsFeed/Resources"),
        .process("ABKInAppMessage/Resources"),
        .process("ABKContentCards/Resources")
      ],
      publicHeadersPath: "include/AppboyUI"
    ),
  ]
)

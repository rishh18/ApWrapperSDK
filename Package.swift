// swift-tools-version: 5.10
//  Package.swift
//  ApWrapperFM
//
//  Created by Rishabh Tripathi on 31/01/25.
//

import PackageDescription

let package = Package(
    name: "ApWrapperFM",
           platforms: [
               .iOS(.v14)
           ],
           products: [
               .library(
                   name: "ApWrapperFM",
                   targets: ["ApWrapperFM"]
               ),
           ],
           dependencies: [.package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.0.0")],
        targets: [
                .target(
                    name: "ApWrapperFM",
                    dependencies: [.product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")],
                    path: "Sources"),
                .testTarget(
                    name: "ApWrapperFMTests",
                    dependencies: ["ApWrapperFM"],
                    path: "Tests"),
            ]
)

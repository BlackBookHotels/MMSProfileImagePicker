// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MMSProfileImagePicker",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "MMSProfileImagePicker",
            targets: ["MMSProfileImagePicker"]),
    ],
    dependencies: [
    
        .package(
            url: "https://github.com/BlackBookHotels/MMSCameraViewController.git",
                .branch("master")
        )
    ],
    targets: [
        .target(
            name: "MMSProfileImagePicker",
            dependencies: ["MMSCameraViewController"],
            path: "Pod/Classes/",
            publicHeadersPath: ".",
	    linkerSettings: [
                //Frameworks
            .linkedFramework("AVFoundation"),
            .linkedFramework("CoreMedia"),
            .linkedFramework("AVFoundation"),
                .linkedFramework("ImageIO")
            
            ]
),
        .testTarget(
            name: "MMSProfileImagePickerTests",
            dependencies: ["MMSProfileImagePicker"]),
    ]
)

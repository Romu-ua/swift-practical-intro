// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "Example",
	targets: [
		.target(name: "Library"),
		.target(name: "AnotherLibrary", dependencies: ["Library"])
	]
)

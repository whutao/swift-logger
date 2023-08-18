// swift-tools-version: 5.6
import PackageDescription

let package = Package(
	name: "Logger",
	platforms: [
		.iOS(.v13), .watchOS(.v6), .macOS(.v10_15), .tvOS(.v13)
	],
	products: [
		.library(name: "Logger", targets: ["Logger"])
	],
	dependencies: [],
	targets: [
		.target(
			name: "Logger",
			dependencies: []
		),
		.testTarget(
			name: "LoggerTests",
			dependencies: ["Logger"]
		)
	]
)

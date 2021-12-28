// swift-tools-version:5.5
import PackageDescription


let package = Package(
	name: "UnwrapOrThrow",
	products: [.library(name: "UnwrapOrThrow", targets: ["UnwrapOrThrow"])],
	targets: [
		.target(name: "UnwrapOrThrow", path: "Sources")
	]
)

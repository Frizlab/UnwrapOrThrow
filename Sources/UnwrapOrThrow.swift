import Foundation



public extension Optional {
	
	func unwrap(orThrow error: Error) throws -> Wrapped {
		guard let unwrapped = self else {
			throw error
		}
		return unwrapped
	}
	
}

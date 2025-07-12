import Foundation



public extension Optional {
	
	func unwrap(orThrow error: @autoclosure () -> Error) throws -> Wrapped {
		guard let unwrapped = self else {
			throw error()
		}
		return unwrapped
	}
	
#if swift(>=6)
	func unwrap<E : Error>(orThrow error: @autoclosure () -> E) throws(E) -> Wrapped {
		guard let unwrapped = self else {
			throw error()
		}
		return unwrapped
	}
#endif
	
}

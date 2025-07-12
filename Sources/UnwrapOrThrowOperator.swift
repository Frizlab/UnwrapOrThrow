import Foundation



infix operator ?! : NilCoalescingPrecedence

#if compiler(>=6)
public func ?!<T, E : Error>(lhs: T?, rhs: @autoclosure () -> E) throws(E) -> T {
	guard let lhs = lhs else {
		throw rhs()
	}
	return lhs
}
#else
public func ?!<T>(lhs: T?, rhs: @autoclosure () -> Error) throws -> T {
	guard let lhs = lhs else {
		throw rhs()
	}
	return lhs
}
#endif

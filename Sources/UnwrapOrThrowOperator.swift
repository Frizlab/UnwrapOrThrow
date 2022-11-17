import Foundation



infix operator ?! : NilCoalescingPrecedence

public func ?!<T>(lhs: T?, rhs: Error) throws -> T {
	guard let lhs = lhs else {
		throw rhs
	}
	return lhs
}

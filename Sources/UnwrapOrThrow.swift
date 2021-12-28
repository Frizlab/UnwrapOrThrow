import Foundation



infix operator ?! : NilCoalescingPrecedence

public func ?!<T>(lhs: T?, rhs: Error) throws -> T {
	if let lhs = lhs {
		return lhs
	}
	throw rhs
}

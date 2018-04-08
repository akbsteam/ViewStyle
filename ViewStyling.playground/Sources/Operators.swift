import Foundation

precedencegroup ForwardApplication
{
    associativity: left
    higherThan: AssignmentPrecedence
}

infix operator <>: ForwardApplication

public func <> <A>(a: A, f: (A) -> Void) -> A
{
    f(a); return a
}

import UIKit

public protocol Tintable: class
{
    var tintableColor: UIColor { get set }
}

extension UIBarButtonItem: Tintable
{
    public var tintableColor: UIColor {
        get { return self.tintColor ?? .clear }
        set { self.tintColor = newValue }
    }
}

extension UIView: Tintable
{
    public var tintableColor: UIColor {
        get { return self.tintColor }
        set { self.tintColor = newValue }
    }
}

extension ViewStyle
{
    public static func tint<T: Tintable>(_ color: UIColor) -> (T) -> Void
    {
        return { $0.tintableColor = color }
    }
}

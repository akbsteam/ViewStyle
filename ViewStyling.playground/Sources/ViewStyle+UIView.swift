import UIKit

extension ViewStyle
{
    public static func clipsToBounds<T: UIView>(_ clipsToBounds: Bool) -> (T) -> Void
    {
        return { $0.clipsToBounds = clipsToBounds }
    }

    public static func backgroundColor<T: UIView>(_ color: UIColor) -> (T) -> Void
    {
        return { $0.backgroundColor = color }
    }
    
    public static func border<T: UIView>(edge: UIRectEdge, color: UIColor, thickness: CGFloat) -> (T) -> Void
    {
        return { $0.layer.addBorder(edge: edge, color: color, thickness: thickness) }
    }
    
    public static func frame<T: UIView>(_ frame: CGRect) -> (T) -> Void
    {
        return { $0.frame = frame }
    }

    public static func frameSize<T: UIView>(_ size: CGSize) -> (T) -> Void
    {
        return { $0.frame.size = size }
    }
    
    public static func modFrame<T: UIView>(_ mod: FrameMod) -> (T) -> Void
    {
        return { $0.frame = mod.frame($0.frame) }
    }
}


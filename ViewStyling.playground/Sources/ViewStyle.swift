import UIKit

public struct ViewStyle {}

public enum FrameMod
{
    case posX(CGFloat)
    case posY(CGFloat)
    case width(CGFloat)
    case height(CGFloat)
    
    public func frame(_ frame: CGRect) -> CGRect
    {
        var frame = frame
        
        switch self {
        case .posX(let mod): frame.origin.x += mod
        case .posY(let mod): frame.origin.x += mod
        case .width(let mod): frame.size.width += mod
        case .height(let mod): frame.size.height += mod
        }
        
        return frame
    }
}

import UIKit

class BorderLayer: CALayer {}

extension CALayer
{
    private func frame(for edge: UIRectEdge, thickness: CGFloat) -> CGRect
    {
        var frame = self.bounds
        
        switch edge {
        case .top:
            frame.size.height = thickness
            
        case .bottom:
            frame.origin.y = self.frame.height - thickness
            frame.size.height = thickness
            
        case .left:
            frame.size.width = thickness
            
        case .right:
            frame.origin.x = self.frame.width - thickness
            frame.size.width = thickness
            
        default:
            break
        }
        
        return frame
    }
    
    public func addBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat)
    {
        let border = BorderLayer()
        border.frame = self.frame(for: edge, thickness: thickness)
        border.backgroundColor = color.cgColor
        self.addSublayer(border)
    }
}

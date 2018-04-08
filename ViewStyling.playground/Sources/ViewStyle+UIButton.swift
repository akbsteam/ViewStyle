import UIKit

extension ViewStyle // MARK: UIButton
{
    public static func titleColor<T: UIButton>(_ color: UIColor, for state: UIControlState) -> (T) -> Void
    {
        return { $0.setTitleColor(color, for: state) }
    }
    
    public static func title<T: UIButton>(_ title: String, for state: UIControlState) -> (T) -> Void
    {
        return { $0.setTitle(title, for: state) }
    }
    
    public static func font<T: UIButton>(_ font: UIFont) -> (T) -> Void
    {
        return { $0.titleLabel?.font = font }
    }
    
    public static func textStyle<T: UIButton>(_ textStyle: UIFontTextStyle) -> (T) -> Void
    {
        return { $0.titleLabel?.font = UIFont.preferredFont(forTextStyle: textStyle) }
    }
}

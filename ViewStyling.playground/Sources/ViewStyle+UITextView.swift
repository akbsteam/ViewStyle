import UIKit

extension ViewStyle // MARK: UITextView
{
    public static func contentInset<T: UITextView>(_ inset: UIEdgeInsets) -> (T) -> Void
    {
        return { $0.contentInset = inset }
    }
    
    public static func textColor<T: UITextView>(_ textColor: UIColor) -> (T) -> Void
    {
        return { $0.textColor = textColor }
    }
    
    public static func textAlignment<T: UITextView>(_ textAlignment: NSTextAlignment) -> (T) -> Void
    {
        return { $0.textAlignment = textAlignment }
    }
    
    public static func font<T: UITextView>(_ font: UIFont) -> (T) -> Void
    {
        return { $0.font = font }
    }
    
    public static func textStyle<T: UITextView>(_ textStyle: UIFontTextStyle) -> (T) -> Void
    {
        return { $0.font = UIFont.preferredFont(forTextStyle: textStyle) }
    }
}

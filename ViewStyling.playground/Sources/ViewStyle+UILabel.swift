import UIKit

extension ViewStyle // MARK: UILabel
{
    public static func font<T: UILabel>(_ font: UIFont) -> (T) -> Void
    {
        return { $0.font = font }
    }

    public static func textStyle<T: UILabel>(_ textStyle: UIFontTextStyle) -> (T) -> Void
    {
        return { $0.font = UIFont.preferredFont(forTextStyle: textStyle) }
    }
    
    public static func numberOfLines<T: UILabel>(_ numberOfLines: Int) -> (T) -> Void
    {
        return { $0.numberOfLines = numberOfLines }
    }
    
    public static func lineBreakMode<T: UILabel>(_ lineBreakMode: NSLineBreakMode) -> (T) -> Void
    {
        return { $0.lineBreakMode = lineBreakMode }
    }
    
    public static func text<T: UILabel>(_ text: String) -> (T) -> Void
    {
        return { $0.text = text }
    }
    
    public static func textColor<T: UILabel>(_ textColor: UIColor) -> (T) -> Void
    {
        return { $0.textColor = textColor }
    }
    
    public static func highlightedTextColor<T: UILabel>(_ textColor: UIColor) -> (T) -> Void
    {
        return { $0.highlightedTextColor = textColor }
    }
    
    public static func textAlignment<T: UILabel>(_ textAlignment: NSTextAlignment) -> (T) -> Void
    {
        return { $0.textAlignment = textAlignment }
    }
}

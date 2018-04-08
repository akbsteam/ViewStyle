import UIKit

extension ViewStyle // MARK: UIActivityIndicatorView
{
    public static func isAnimating<T: UIActivityIndicatorView>(_ animating: Bool) -> (T) -> Void
    {
        return { animating ? $0.startAnimating() : $0.stopAnimating() }
    }
}

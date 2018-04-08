import UIKit
import PlaygroundSupport

extension ViewStyle
{
    static func contentInsets<T: UIButton>(for adjustment: CGFloat) -> (T) -> Void
    {
        return { $0.contentEdgeInsets.bottom = adjustment / 2 }
    }
    
    static func messageTextView(view: UITextView)
    {
        view <> frame(CGRect(x: 10, y: 60, width: 300, height: 300))
             <> backgroundColor(.white)
             <> textStyle(.body)
             <> textColor(.darkGray)
             <> contentInset(.zero)
             <> textAlignment(.left)
    }
    
    static func presentButton(view: UIButton)
    {
        let adjustment: CGFloat = 10
        
        view <> frame(CGRect(x: 10, y: 10, width: 100, height: 30 + adjustment))
             <> contentInsets(for: adjustment)
             <> backgroundColor(.white)
             <> title("Present", for: .normal)
             <> titleColor(.darkGray, for: .normal)
             <> title("Dismiss", for: .selected)
             <> titleColor(.darkGray, for: .selected)
    }
}

class MyViewController : UIViewController
{
    override func loadView()
    {
        let view = UIView() <> ViewStyle.backgroundColor(.lightGray)

        let textView = UITextView() <> ViewStyle.messageTextView
        let button = UIButton() <> ViewStyle.presentButton

        view.addSubview(textView)
        view.addSubview(button)
        self.view = view
        
        textView.text = "Aenean facilisis faucibus sem, quis maximus odio vehicula sollicitudin. Nunc rhoncus odio eget mauris imperdiet scelerisque. Proin sem tellus, auctor vel hendrerit quis, congue sed libero. Curabitur sed pretium tortor, eu tincidunt magna. Vestibulum a eleifend dui. Etiam at laoreet sem. Pellentesque molestie commodo finibus."
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

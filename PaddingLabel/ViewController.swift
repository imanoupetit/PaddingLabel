
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyboardAutoLayoutLabel: PaddingLabel!
    let autoLayoutLabel = PaddingLabel(padding: UIEdgeInsets(top: 20, left: 40, bottom: 20, right: 40))
    let springsAndStructsLabel = PaddingLabel(frame: CGRect.zero)
    var textToDisplay = "Lorem ipsum dolor sit er elit lamet."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set autoLayoutLabel
        autoLayoutLabel.text = textToDisplay
        autoLayoutLabel.backgroundColor = .red
        autoLayoutLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(autoLayoutLabel)
        autoLayoutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        autoLayoutLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Set springsAndStructsLabel
        springsAndStructsLabel.text = textToDisplay
        springsAndStructsLabel.backgroundColor = .green
        view.addSubview(springsAndStructsLabel)
        springsAndStructsLabel.frame.origin = CGPoint(x: 30, y: 90)
        springsAndStructsLabel.sizeToFit()
        
        // Set storyboardAutoLayoutLabel
        storyboardAutoLayoutLabel.text = textToDisplay
        storyboardAutoLayoutLabel.backgroundColor = .blue
    }
    
    // Link this IBAction to a UIButton or a UIBarButtonItem in Storyboard
    @IBAction func updateLabelText(_ sender: Any) {
        textToDisplay = textToDisplay == "Lorem ipsum dolor sit er elit lamet." ? "Lorem ipsum." : "Lorem ipsum dolor sit er elit lamet."
        
        // autoLayoutLabel
        autoLayoutLabel.text = textToDisplay
        
        // springsAndStructsLabel
        springsAndStructsLabel.text = textToDisplay
        springsAndStructsLabel.sizeToFit()
 
        // storyboardAutoLayoutLabel
        storyboardAutoLayoutLabel.text = textToDisplay
    }
    
}

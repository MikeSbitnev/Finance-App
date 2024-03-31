
import UIKit

class Onboarding3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        // Set background color for the view controller's view
        view.backgroundColor = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1.0)

        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        // Adjust the frame to fill the entire screen
        containerView.backgroundColor = .clear // Set to clear to avoid overlapping with the background color
        view.addSubview(containerView)

        let textLabel = UILabel(frame: CGRect(x: 12, y: 525, width: view.bounds.width - 24, height: 80))
        textLabel.text = "Deposit and withdraw\neasy and fast"
        textLabel.font = UIFont.boldSystemFont(ofSize: 28.0) // Use bold system font directly
        textLabel.textColor = .white
        textLabel.numberOfLines = 0
        textLabel.textAlignment = .center
        textLabel.lineBreakMode = .byWordWrapping
        containerView.addSubview(textLabel)

        let skipButton = UIButton(frame: CGRect(x: view.bounds.width - 60, y: 75, width: 50, height: 24))
        skipButton.setTitle("Skip", for: .normal)
        skipButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
        skipButton.setTitleColor(UIColor(red: 1, green: 0.45, blue: 0.13, alpha: 1.0), for: .normal)
        containerView.addSubview(skipButton)

        let nextButton = UIButton(frame: CGRect(x: 25, y: view.bounds.height - 140, width: view.bounds.width - 50, height: 48))
        nextButton.setTitle("Next", for: .normal)
        nextButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
        nextButton.setTitleColor(UIColor(red: 0.93, green: 9.93, blue: 0.99, alpha: 1.0), for: .normal)
        nextButton.backgroundColor = UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0)
        nextButton.layer.cornerRadius = 12
        containerView.addSubview(nextButton)
       
        // Add target action for the "Next" button
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)

        let infoLabel = UILabel(frame: CGRect(x: 25, y: view.bounds.height - 80, width: view.bounds.width - 50, height: 38))
        let lockSymbol = "\u{1F512}" // Unicode for lock symbol
        infoLabel.text = "\(lockSymbol) Your information is always security"
        infoLabel.font = UIFont(name: "Poppins", size: 14)
        infoLabel.textColor = UIColor(red: 0.71, green: 0.71, blue: 0.71, alpha: 1.0)
        infoLabel.numberOfLines = 0
        infoLabel.textAlignment = .center
        infoLabel.alpha = 0.5
        containerView.addSubview(infoLabel)

        // Adding Image View
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
        imageView.image = UIImage(named: "Onboarding3.png")
        imageView.contentMode = .scaleAspectFill
        imageView.center = CGPoint(x: containerView.center.x, y: containerView.center.y - 100)
        containerView.addSubview(imageView)
        
        // Create and add EllipsesView (Slider)
        let ellipsesView = EllipsesView3(frame: CGRect(x: nextButton.center.x - 20, y: nextButton.frame.minY - 20, width: 40, height: 8))
        ellipsesView.backgroundColor = .clear
        containerView.addSubview(ellipsesView)
    }
   
    @objc func nextButtonTapped() {
       // Transition to another view controller
       let anotherViewController = SignUpDefault()
       navigationController?.pushViewController(anotherViewController, animated: true)
    }
  }


class EllipsesView3: UIView {
   
   override func draw(_ rect: CGRect) {
      super.draw(rect)
      
      // Define ellipse colors
      let colors: [UIColor] = [
         UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 0.5),
         UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 0.5),
         UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0)
      ]
      
      // Define ellipse sizes
      let ellipseSize = CGSize(width: 8, height: 8)
      
      // Calculate spacing between ellipses
      let spacing: CGFloat = 8
      
      // Draw ellipses
      var xPosition: CGFloat = 0
      for i in 0..<colors.count {
         let ellipseRect = CGRect(x: xPosition, y: 0, width: ellipseSize.width, height: ellipseSize.height)
         let ellipsePath = UIBezierPath(ovalIn: ellipseRect)
         colors[i].setFill()
         ellipsePath.fill()
         xPosition += ellipseSize.width + spacing
      }
   }
}















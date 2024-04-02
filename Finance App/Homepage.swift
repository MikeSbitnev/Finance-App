//import UIKit
//
//class HomeView: UIView {
//   
//   var totalBalanceLabel: UILabel!
//   var balanceAmountLabel: UILabel!
//   
//   override init(frame: CGRect) {
//      super.init(frame: frame)
//      setupViews()
//   }
//   
//   required init?(coder aDecoder: NSCoder) {
//      fatalError("init(coder:) has not been implemented")
//   }
//   
//   private func setupViews() {
//      totalBalanceLabel = UILabel()
//      totalBalanceLabel.text = "Total Balance"
//      totalBalanceLabel.font = UIFont(name: "Poppins", size: 14)
//      totalBalanceLabel.textColor = UIColor(red: 0.78, green: 0.78, blue: 0.98, alpha: 0.5) // Adjust opacity
//      totalBalanceLabel.numberOfLines = 0
//      totalBalanceLabel.lineBreakMode = .byWordWrapping
//      totalBalanceLabel.frame = CGRect(x: 20, y: 20, width: 200, height: 25)
//      addSubview(totalBalanceLabel)
//      
//      balanceAmountLabel = UILabel()
//      balanceAmountLabel.text = "$254,352"
//      balanceAmountLabel.font = UIFont.boldSystemFont(ofSize: 30)
//      balanceAmountLabel.textColor = .white
//      balanceAmountLabel.frame = CGRect(x: 20, y: 40, width: 300, height: 60) // Modify size easily
//      balanceAmountLabel.numberOfLines = 0
//      balanceAmountLabel.adjustsFontSizeToFitWidth = true
//      balanceAmountLabel.adjustsFontForContentSizeCategory
//      addSubview(balanceAmountLabel)
//      
//      let iconView = UIView()
//      iconView.frame = CGRect(x: 270, y: 35, width: 50, height: 50)
//      iconView.backgroundColor = UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0)
//      iconView.layer.cornerRadius = 25 // Adjust the radius accordingly
//      addSubview(iconView)
//      
//      // Add a UILabel with a plus sign
//      let plusLabel = UILabel()
//      plusLabel.text = "+"
//      plusLabel.font = UIFont.boldSystemFont(ofSize: 24)
//      plusLabel.textColor = .white
//      plusLabel.textAlignment = .center
//      plusLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//      iconView.addSubview(plusLabel)
//   }
//}
//
//class Homepage: UIViewController {
//   
//   override func viewDidLoad() {
//      super.viewDidLoad()
//      
//      let homeView = HomeView(frame: CGRect(x: 25, y: 100, width: 343, height: 113))
//      homeView.backgroundColor = UIColor(red: 0.07, green: 0.08, blue: 0.09, alpha: 0.80)
//      homeView.layer.cornerRadius = 16
//      view.addSubview(homeView)
//   }
//}
//


//
//
//import UIKit
//
//class ContentView: UIView {
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func setupViews() {
//        // First Card
//        let firstCard = createCard(color1: UIColor(red: 1, green: 0.59, blue: 0.34, alpha: 1),
//                                   color2: UIColor(red: 0.99, green: 0.82, blue: 0.71, alpha: 1))
//        addSubview(firstCard)
//        
//        // Second Card
//        let secondCard = createCard(color1: UIColor(red: 0.74, green: 0.74, blue: 1, alpha: 1),
//                                    color2: UIColor(red: 0.82, green: 0.82, blue: 1, alpha: 1))
//        addSubview(secondCard)
//        
//        // Third Card
//        let thirdCard = createCard(color1: UIColor(red: 1, green: 0.78, blue: 0.65, alpha: 1),
//                                   color2: UIColor(red: 1, green: 0.91, blue: 0.85, alpha: 1))
//        addSubview(thirdCard)
//        
//        // Positioning Cards
//        let cardWidth: CGFloat = 104
//        let cardHeight: CGFloat = 112
//        let padding: CGFloat = 14
//        let startY: CGFloat = 0
//        let startX: CGFloat = 0
//        
//        firstCard.frame = CGRect(x: startX, y: startY, width: cardWidth, height: cardHeight)
//        secondCard.frame = CGRect(x: startX + cardWidth + padding, y: startY, width: cardWidth, height: cardHeight)
//        thirdCard.frame = CGRect(x: startX + 2 * (cardWidth + padding), y: startY, width: cardWidth, height: cardHeight)
//    }
//    
//    private func createCard(color1: UIColor, color2: UIColor) -> UIView {
//        let card = UIView()
//        card.backgroundColor = .clear
//        
//        // Background Gradient Layer
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [color1.cgColor, color2.cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
//        gradientLayer.frame = CGRect(x: 0, y: 0, width: 104, height: 112)
//        card.layer.insertSublayer(gradientLayer, at: 0)
//        
//        // Icon View
//        let iconView = UIView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
//        iconView.backgroundColor = .clear
//        card.addSubview(iconView)
//        
//        // Plus Sign
//        let plusLabel = UILabel()
//        plusLabel.text = "+"
//        plusLabel.font = UIFont.boldSystemFont(ofSize: 24)
//        plusLabel.textColor = .white
//        plusLabel.textAlignment = .center
//        plusLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        iconView.addSubview(plusLabel)
//        
//        // Text Label
//        let textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 64, height: 20))
//        textLabel.text = "Stock"
//        textLabel.font = UIFont(name: "Poppins-Medium", size: 12)
//        textLabel.textColor = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1)
//        textLabel.textAlignment = .center
//        card.addSubview(textLabel)
//        
//        // Constraints for Icon View
//        iconView.translatesAutoresizingMaskIntoConstraints = false
//        iconView.centerXAnchor.constraint(equalTo: card.centerXAnchor).isActive = true
//        iconView.centerYAnchor.constraint(equalTo: card.centerYAnchor, constant: -8).isActive = true
//        
//        // Constraints for Text Label
//        textLabel.translatesAutoresizingMaskIntoConstraints = false
//        textLabel.centerXAnchor.constraint(equalTo: card.centerXAnchor).isActive = true
//        textLabel.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -8).isActive = true
//        
//        // Corner Radius
//        card.layer.cornerRadius = 12
//        
//        return card
//    }
//}
//
//
//
//class Homepage: UIViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Create and add ContentView to the view
//        let contentView = ContentView(frame: CGRect(x: 25, y: 100, width: 340, height: 112))
//        contentView.backgroundColor = UIColor(red: 0.07, green: 0.08, blue: 0.09, alpha: 0.80)
//        view.addSubview(contentView)
//    }
//}


import UIKit

class SignUpDefault: UIViewController, UITextFieldDelegate {
   
   // Declare properties for text fields
     var firstNameTextField: UITextField!
     var lastNameTextField: UITextField!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      setupUI()
   }
   
  
   func setupUI() {
      view.backgroundColor = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1.0)
      view.layer.cornerRadius = 20
      
      // Create firstNameTextField
      firstNameTextField = createTextField(withPlaceholder: "Example: Yann")
      firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
      firstNameTextField.delegate = self
      
      // Create lastNameTextField
      lastNameTextField = createTextField(withPlaceholder: "Example: Tierson")
      lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
      lastNameTextField.delegate = self
      
      // Create continueButton
      let continueButton = UIButton(type: .custom)
      continueButton.setTitle("Continue", for: .normal)
      continueButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
      continueButton.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.99, alpha: 1.0), for: .normal)
      continueButton.backgroundColor = UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0)
      continueButton.layer.cornerRadius = 12
      continueButton.translatesAutoresizingMaskIntoConstraints = false
      
      // Add target action for the "Continue" button
      continueButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
      
      // Create signUpLabel
      let signUpLabel = UILabel()
      signUpLabel.text = "Sign up\nnew account"
      signUpLabel.numberOfLines = 2
      signUpLabel.font = UIFont(name: "Poppins-Bold", size: 84) // Apply bold font
      signUpLabel.font = UIFont.systemFont(ofSize: 35)
      signUpLabel.textColor = .white
      signUpLabel.textAlignment = .left // Center align the text
      signUpLabel.translatesAutoresizingMaskIntoConstraints = false // Set translatesAutoresizingMaskIntoConstraints to false
      
      // Create small labels for firstName and lastName
      let firstNameLabel = UILabel()
      firstNameLabel.text = "First Name"
      firstNameLabel.font = UIFont(name: "Poppins", size: 14)
      firstNameLabel.textColor = UIColor(red: 0.78, green: 0.78, blue: 0.98, alpha: 0.5) // Adjust opacity
      firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
      
      let lastNameLabel = UILabel()
      lastNameLabel.text = "Last Name"
      lastNameLabel.font = UIFont(name: "Poppins", size: 14)
      lastNameLabel.textColor = UIColor(red: 0.78, green: 0.78, blue: 0.98, alpha: 0.5) // Adjust opacity
      lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
      
      //-----------------------------------------------
      
      // Or sign up with
      let signUpLabel1 = UILabel()
      signUpLabel1.text = "Or sign up with"
      signUpLabel1.font = UIFont(name: "Poppins", size: 14)
      signUpLabel1.textColor = UIColor(red: 0.78, green: 0.78, blue: 0.98, alpha: 0.5)
      signUpLabel1.numberOfLines = 0
      signUpLabel1.textAlignment = .center

      // Google Button
      let googleButton = createButton(withText: "Google", imageName: "google-logo.png")

      // Apple Button
      let appleButton = createButton(withText: "Apple", imageName: "apple-logo.png")

      // You had an account
      let accountLabel = UILabel()
      accountLabel.text = "You had an account"
      accountLabel.font = UIFont(name: "Poppins", size: 14)
      accountLabel.textColor = UIColor(red: 0.78, green: 0.78, blue: 0.98, alpha: 0.5)
      accountLabel.numberOfLines = 0
      accountLabel.textAlignment = .center

      // Login Now Label
      let loginLabel = UILabel()
      loginLabel.text = "Login now"
      loginLabel.font = UIFont(name: "Poppins", size: 14)
      loginLabel.textColor = UIColor(red: 0, green: 0, blue: 1, alpha: 0.7) // Adjust alpha value for transparency
      loginLabel.numberOfLines = 0
      loginLabel.textAlignment = .center

      // StackViews
      let buttonStackView = UIStackView(arrangedSubviews: [googleButton, appleButton])
      buttonStackView.axis = .horizontal
      buttonStackView.spacing = 16
      buttonStackView.distribution = .fillEqually

      let labelsStackView = UIStackView(arrangedSubviews: [accountLabel, loginLabel])
      labelsStackView.axis = .horizontal
      labelsStackView.spacing = 16
      labelsStackView.distribution = .fillEqually

      let overallStackView = UIStackView(arrangedSubviews: [signUpLabel1, buttonStackView, labelsStackView])
      overallStackView.axis = .vertical
      overallStackView.spacing = 24
      overallStackView.alignment = .fill

      view.addSubview(overallStackView)


      // Add subviews
      view.addSubview(firstNameTextField)
      view.addSubview(lastNameTextField)
      view.addSubview(continueButton)
      view.addSubview(signUpLabel)
      view.addSubview(firstNameLabel)
      view.addSubview(lastNameLabel)
      
      // Apply constraints
      
      NSLayoutConstraint.activate([
         // firstNameTextField constraints
         firstNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
         firstNameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -135), // Center vertically with offset
         firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14), // Leading margin
         firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14), // Trailing margin
         firstNameTextField.heightAnchor.constraint(equalToConstant: 48), // Fixed height
         
         // lastNameTextField constraints
         lastNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
         lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 40), // Spacing from firstNameTextField
         lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14), // Leading margin
         lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14), // Trailing margin
         lastNameTextField.heightAnchor.constraint(equalToConstant: 48), // Fixed height
         
         // continueButton constraints
         continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
         continueButton.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 40), // Spacing from lastNameTextField
         continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14), // Leading margin
         continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14), // Trailing margin
         continueButton.heightAnchor.constraint(equalToConstant: 48), // Fixed height
         
         // signUpLabel constraints
         //signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -132), // Center horizontally
         signUpLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
         signUpLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
         signUpLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1), // Top constraint with padding
         
         // firstNameLabel constraints
         firstNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
         firstNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14), // Leading margin
         firstNameLabel.bottomAnchor.constraint(equalTo: firstNameTextField.topAnchor, constant: -8), // Spacing above firstNameTextField
         firstNameLabel.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 60),
         
         
         // lastNameLabel constraints
         lastNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Center horizontally
         lastNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14), // Leading margin
         lastNameLabel.bottomAnchor.constraint(equalTo: lastNameTextField.topAnchor, constant: -8), // Spacing above lastNameTextField
         
         loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180),
         loginLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         accountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         accountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
      ])
      
      // ---------------------------------
      
      // Constraints
      overallStackView.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
         overallStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
         overallStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
         overallStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50) // Anchor to the bottom of the superview with some padding
      ])
      
      
      
      func createTextField(withPlaceholder placeholder: String) -> UITextField {
         let textField = UITextField()
         textField.placeholder = placeholder
         textField.font = UIFont(name: "Poppins", size: 16)
         textField.textColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.0)
         textField.backgroundColor = UIColor(red: 0.10, green: 0.11, blue: 0.12, alpha: 1.0)
         textField.layer.cornerRadius = 12
         textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: textField.frame.height))
         textField.leftViewMode = .always
         return textField
      }
   }
   
   @objc func nextButtonTapped() {
      // Transition to another view controller
      let anotherViewController = WelcomebackDefault()
      navigationController?.pushViewController(anotherViewController, animated: true)
   }
   

   func textFieldDidBeginEditing(_ textField: UITextField) {
      textField.textColor = .white
   }
   
   
   func createButton(withText text: String, imageName: String?) -> UIButton {
      let button = UIButton(type: .custom)
      button.setTitle(text, for: .normal)
      button.titleLabel?.font = UIFont(name: "Poppins", size: 14)
      button.setTitleColor(UIColor.white, for: .normal)
      button.backgroundColor = UIColor(red: 0.10, green: 0.11, blue: 0.12, alpha: 1.0)
      button.layer.cornerRadius = 12
      button.contentEdgeInsets = UIEdgeInsets(top: 13, left: 36.50, bottom: 11, right: 35.50)
      
      if let imageName = imageName {
         if let image = UIImage(named: imageName) {
            // Resize the image to fit the button
            let imageSize = CGSize(width: 30, height: 30)
            let resizedImage = image.resized(to: imageSize)
            button.setImage(resizedImage, for: .normal)
            button.imageView?.contentMode = .scaleAspectFit
            button.imageEdgeInsets = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
          
         }
      }
      
      return button
   }
}

extension UIImage {
    func resized(to targetSize: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: targetSize).image { _ in
            draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }
}


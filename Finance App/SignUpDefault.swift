import UIKit

class SignUpDefault: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1.0)
        view.layer.cornerRadius = 20
        
        let continueButton = UIButton(type: .custom)
        continueButton.setTitle("Continue", for: .normal)
        continueButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
        continueButton.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.99, alpha: 1.0), for: .normal)
        continueButton.backgroundColor = UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0)
        continueButton.layer.cornerRadius = 12
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
        let signUpLabel = UILabel()
        signUpLabel.text = "Sign up\nnew account"
        signUpLabel.numberOfLines = 2
        signUpLabel.font = UIFont(name: "Poppins-Bold", size: 28)
        signUpLabel.textColor = .white
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let firstNameTextField = createTextField(withPlaceholder: "Example: Yann")
        let lastNameTextField = createTextField(withPlaceholder: "Example: Tierson")
        
        let orSignUpWithLabel = UILabel()
        orSignUpWithLabel.text = "Or sign up with"
        orSignUpWithLabel.font = UIFont(name: "Poppins", size: 14)
        orSignUpWithLabel.textColor = UIColor(red: 0.71, green: 0.71, blue: 0.71, alpha: 1.0)
        orSignUpWithLabel.numberOfLines = 0
        orSignUpWithLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let googleImage = UIImageView(image: UIImage(named: "google-logo.png")) // Replace "google_placeholder" with your actual image
        googleImage.contentMode = .scaleAspectFit
        googleImage.translatesAutoresizingMaskIntoConstraints = false
        
        let appleImage = UIImageView(image: UIImage(named: "apple-logo.png")) // Replace "apple_placeholder" with your actual image
        appleImage.contentMode = .scaleAspectFit
        appleImage.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(googleImage)
        stackView.addArrangedSubview(appleImage)
        
        let loginNowButton = UIButton(type: .custom)
        loginNowButton.setTitle("Login now", for: .normal)
        loginNowButton.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
        loginNowButton.setTitleColor(UIColor(red: 0.30, green: 0.29, blue: 0.94, alpha: 1.0), for: .normal)
        loginNowButton.translatesAutoresizingMaskIntoConstraints = false
        
        let youHadAnAccountLabel = UILabel()
        youHadAnAccountLabel.text = "You had an account"
        youHadAnAccountLabel.font = UIFont(name: "Poppins", size: 14)
        youHadAnAccountLabel.textColor = UIColor(red: 0.71, green: 0.71, blue: 0.71, alpha: 1.0)
        youHadAnAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(continueButton)
        view.addSubview(signUpLabel)
        view.addSubview(firstNameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(orSignUpWithLabel)
        view.addSubview(stackView)
        view.addSubview(loginNowButton)
        view.addSubview(youHadAnAccountLabel)
        
        NSLayoutConstraint.activate([
            continueButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            continueButton.heightAnchor.constraint(equalToConstant: 48),
            
            signUpLabel.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 36),
            signUpLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            firstNameTextField.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 40),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 48),
            
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 14),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            lastNameTextField.heightAnchor.constraint(equalToConstant: 48),
            
            orSignUpWithLabel.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 40),
            orSignUpWithLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            stackView.topAnchor.constraint(equalTo: orSignUpWithLabel.bottomAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            loginNowButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            loginNowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginNowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginNowButton.heightAnchor.constraint(equalToConstant: 48),
            
            youHadAnAccountLabel.topAnchor.constraint(equalTo: loginNowButton.bottomAnchor, constant: 20),
            youHadAnAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    func createTextField(withPlaceholder placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.font = UIFont(name: "Poppins", size: 16)
        textField.textColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1.0)
        textField.backgroundColor = UIColor(red: 0.10, green: 0.11, blue: 0.12, alpha: 1.0)
        textField.layer.cornerRadius = 12
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
}









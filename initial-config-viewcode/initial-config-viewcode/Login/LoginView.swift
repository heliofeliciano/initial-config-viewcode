import Foundation
import UIKit

final class LoginView: UIView {
    
    private var image: UIImageView = {
        let image = UIImageView(frame: .zero)
        return image
    }()
    
    private var loginLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Login"
        return label
    }()
    
    private var loginTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.placeholder = "Put your login here"
        return textField
    }()
    
    private var passwordLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Password"
        return label
    }()
    
    private var passwordTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.placeholder = "Put your password"
        return textField
    }()
    
    private var loginButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    private var stackViewContent: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 12
        return stackView
    }()
    
    private var viewRestContent: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        applyViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func buttonTapped() {
        print("Login button was tapped")
    }
}
extension LoginView: StandardViewConfiguration {
    
    func buildHierarchy() {
        addSubview(stackViewContent)
        stackViewContent.addArrangedSubview(image)
        stackViewContent.addArrangedSubview(loginLabel)
        stackViewContent.addArrangedSubview(loginTextField)
        stackViewContent.addArrangedSubview(passwordLabel)
        stackViewContent.addArrangedSubview(passwordTextField)
        stackViewContent.addArrangedSubview(loginButton)
        stackViewContent.addArrangedSubview(viewRestContent)
    }
    
    func setupConstraints() {
        stackViewContent.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewContent.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackViewContent.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackViewContent.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackViewContent.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    func configureViews() {
        
    }
}

extension LoginView: LoginViewType {
    
    func show() {
    }
}

import Foundation
import UIKit

final class LoginViewController: UIViewController {

    let loginView: LoginView
    
    init(loginView: LoginView = LoginView()) {
        self.loginView = loginView
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        show()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginViewController: LoginViewControllerType {
    
    func show() {
        loginView.show()
    }
}

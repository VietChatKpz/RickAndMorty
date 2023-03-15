//
//  RMLoginViewController.swift
//  RickAndMorty
//
//  Created by Đình Việt on 14/03/2023.
//

import UIKit
import FirebaseAuth

class RMLoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passTextField.isSecureTextEntry = true
        emailTextField.delegate = self
        passTextField.delegate = self
    }

    @IBAction func actionLogin(_ sender: Any) {
        emailTextField.becomeFirstResponder()
        passTextField.becomeFirstResponder()
        
        guard let email = emailTextField.text,
              let pass = passTextField.text,
              !email.isEmpty,
              !pass.isEmpty,
              pass.count >= 6 else {
            return
        }
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: pass) { [weak self] authResult, error in
            guard let strongSelf = self,
                  let result = authResult,
                  error == nil else {
                return
            }
            
            let user = result.user
            UserDefaults.standard.setValue(true, forKey: "login")
            let vc = RMTabBarController()
            let nav = UINavigationController(rootViewController: vc)
            strongSelf.navigationController?.pushViewController(nav, animated: true)
            print("Login: \(user)")
        }
        
        
        
    }
    
}

extension RMLoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            passTextField.becomeFirstResponder()
        }
        else if textField == passTextField {
            actionLogin((Any).self)
        }
        return true
    }
}

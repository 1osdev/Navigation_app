//
//  SigninVC.swift
//  Navigation_app
//
//  Created by Дмитрий Смирнов on 29.01.22.
//

import UIKit

final class SignInVC: UIViewController {

    @IBOutlet weak var emailTfOut: UITextField!
    @IBOutlet weak var passTfOut: UITextField!
    @IBOutlet weak var errorLblOut: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }

    @IBAction private func signInTapped() {
        guard let email = emailTfOut.text,
              let pass = passTfOut.text,
              checkUser(email: email, pass: pass)
        else {
            errorLblOut.isHidden = false
            return
        }
        performSegue(withIdentifier: "goToMain", sender: nil)
    }
    
    private func checkUser(email: String, pass: String) -> Bool {
        let emailSaved = UserDefaults.standard.string(forKey: Constants.email)
        let passSaved = UserDefaults.standard.string(forKey: Constants.pass)
        let userFound = (email == emailSaved) && (pass == passSaved)
        return userFound
    }
    
}


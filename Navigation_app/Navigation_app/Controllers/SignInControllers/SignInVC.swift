//
//  SigninVC.swift
//  Navigation_app
//
//  Created by Дмитрий Смирнов on 29.01.22.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var emailTfOut: UITextField!
    @IBOutlet weak var passTfOut: UITextField!
    @IBOutlet weak var errorLblOut: UILabel!

    @IBOutlet weak var signInOut: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }

    @IBAction func emailTfAct(_ sender: UITextField) {
        signInOut.isEnabled = isEmptyTF()
    }

    @IBAction func passTfAct(_ sender: UITextField) {
        signInOut.isEnabled = isEmptyTF()
    }

    @IBAction func signInBtnAct() {
    }

    func isEmptyTF() -> Bool {
        errorLblOut.isHidden = true
        if let emailTfText = emailTfOut.text,
            let passTfText = passTfOut.text {
            return !emailTfText.isEmpty && !passTfText.isEmpty
        } else {
            return false
        }
    }

    //let email = UserDefaults.standard.string(forKey: email)
    //let pass = UserDefaults.standard.string(forKey: pass)

    @IBAction private func saveUser(_ sender: Any?) {
        var email = emailTfOut.text
        var pass = passTfOut.text

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}


//
//  CodeVerifVC.swift
//  Navigation_app
//
//  Created by Дмитрий Смирнов on 29.01.22.
//

import UIKit

final class CodeVerifVC: UIViewController {
    
    @IBOutlet private weak var codeSecretLbl: UILabel!
    
    private var code: String = String(Int.random(in: 10000...99999))
    
    var email: String?
    var name: String?
    var pass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func codeTFChanged(_ sender: UITextField) {
        guard let ourCode = sender.text else { return }
        if ourCode.count == 5 {
            if ourCode.count == 5, VerificationService.isPassCofirm(pass1: code, pass2: ourCode) {
                performSegue(withIdentifier: "ShowWelcomeScreen", sender: nil)
            } else {
                //TODO: - start timer
            }
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let email = email,
            let name = name,
            let pass = pass,
            let destVC = segue.destination as? WelcomeVC else { return }

        destVC.email = email
        destVC.name = name
        destVC.pass = pass
    }
    
    private func setupUI() {
        codeSecretLbl.text = "please enter code \(code) from \(email ?? "")"
    }
}


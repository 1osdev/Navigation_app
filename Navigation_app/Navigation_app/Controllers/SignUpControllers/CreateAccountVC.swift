//
//  CreateAccountVC.swift
//  Navigation_app
//
//  Created by Дмитрий Смирнов on 29.01.22.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var emailErrorLbl: UILabel!

    @IBOutlet weak var nameTF: UITextField!

    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var passErrorLbl: UILabel!

    @IBOutlet weak var verifPassView: UIStackView!

    @IBOutlet weak var confPassTF: UITextField!
    @IBOutlet weak var confPassErrorLbl: UILabel!

    @IBOutlet weak var signUpBtn: UIButton!

    @IBOutlet weak var scrollView: UIScrollView!

    private var isValidEmail = false
    private var isConfPass = false
    private var passwordStrenght: PasswordStrength = .veryWeak

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func viewWillAppear(_ animated: Bool) {
//        self.startKeyboardObserver()
//    }


    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let email = emailTF.text,
//            let name = nameTF.text,
//            let pass = passTF.text,
//            let destVC = segue.destination as? CodeVerifVC else {
//            return
//        }
//
//        destVC.email = email
//        destVC.name = name
//        destVC.pass = pass
//    }

    @IBAction func signIbButtonTouch() {
        navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func emailTFChanged(_ sender: UITextField) {

        guard let email = sender.text else { return }
        isValidEmail = VerificationService.isValidEmail(email: email)
        emailErrorLbl.isHidden = isValidEmail
    
    }
    
//    @IBAction func passTFChanged(_ sender: UITextField) {
//        guard let pass1 = sender.text else { return }
//        passwordStrenght = VerificationService.isValidPassword(pass: pass1)
//        passErrorLbl.isHidden = !(passwordStrenght == veryWeak)
//        verifPassView.enumerated().forEach { (index, view) in
//            if (index <= (passwordStrenght.rawValue - 1))
//                view.alpha = 1
//            } else {
//                view.alpha = 0.1
//            }

//        guard let pass2 = confPassTF.text else { return }
//        updatePassErrorLbl(pass1: pass1, pass2: pass2)
//
//        updateBtnState()
//        }
//
//    @IBAction func confPassTFChanged(_ sender: UITextField) {
//        guard let pass1 = passTF.text,
//              let pass2 = sender.text else { return }
//        updatePassErrorLbl(pass1: pass1, pass2: pass2)
//
//        updateBtnState()
//    }
//
//    private func updatePassErrorLbl(pass1: String, pass2: String) {
//        isConfPass = VerificationService.isPassCofirm(pass1: pass1, pass2: pass2)
//        confPassErrorLbl.isHidden = isConfPass
//    }
//    private func updateBtnState() {
//        signUpBtn.isEnabled = isValidEmail && isConfPass && (passwordStrenght != .veryWeak)
//    }
//
//
}

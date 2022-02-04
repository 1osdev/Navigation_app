//
//  WelcomeVC.swift
//  Navigation_app
//
//  Created by Дмитрий Смирнов on 29.01.22.
//

import UIKit

final class WelcomeVC: UIViewController {

    var email: String?
    var name: String?
    var pass: String?
    
    
    @IBAction func continueBtnPress() {
    guard let email = email,
          let name = name,
          let pass = pass else { return }
        UserDefaults.standard.set(name, forKey: name)
        UserDefaults.standard.set(email, forKey: email)
        UserDefaults.standard.set(pass, forKey: pass)
        navigationController?.popToRootViewController(animated: true)
    }
}

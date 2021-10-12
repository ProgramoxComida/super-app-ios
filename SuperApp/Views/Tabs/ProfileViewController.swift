//
//  ProfileViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 11/10/21.
//

import UIKit

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton() {
        let vc = UIViewController()
        
        vc.view.backgroundColor = .red
        vc.title = "Mis datos"
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

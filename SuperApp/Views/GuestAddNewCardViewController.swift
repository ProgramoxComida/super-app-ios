//
//  GuestAddNewCardViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 23/10/21.
//

import UIKit

class GuestAddNewCardViewController: UIViewController {
    @IBOutlet weak var addCard: UIButton!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        let tap = UITapGestureRecognizer(target: self, action: #selector(goBack))
        addCard.addGestureRecognizer(tap)
    }
    
    @objc func goBack() {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
}

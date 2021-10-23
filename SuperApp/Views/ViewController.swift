//
//  ViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 02/10/21.
//

import UIKit
import WhatsNewKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let whatsNew = WhatsNew(title: "What's new",
                             items: [
                                WhatsNew.Item(title: "Test", subtitle: "Testing What's new stuff", image: UIImage(systemName: "star"))
                             ])
        
        guard let vc = WhatsNewViewController(whatsNew: whatsNew, versionStore: KeyValueWhatsNewVersionStore()) else {
            return
        }
        
        present(vc, animated: true)
    }


}


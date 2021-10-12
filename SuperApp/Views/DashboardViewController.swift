//
//  DashboardViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 11/10/21.
//

import UIKit

class DashboardViewController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.delegate = self
        self.title = "Test"
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController)!
        
        switch selectedIndex {
            case 0:
                self.title = "Mi Banca"
            case 1:
                self.title = "Compras";
            case 2:
                self.title = "Comercio";
            case 3:
                self.title = "Mi Perfil";
            default:
                print("Do nothing")
        }
    }
}

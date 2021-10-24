//
//  RechargesSelectionViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 23/10/21.
//

import UIKit

class RechargesSelectionViewController: UIViewController {
    @IBOutlet weak var btnRechargesPackages: UIButton!
    @IBOutlet weak var btnRechargeTag: UIButton!
    @IBOutlet weak var btnStreaming: UIButton!
    @IBOutlet weak var btnVideogames: UIButton!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        
        btnRechargesPackages.contentHorizontalAlignment = .left;
        btnRechargeTag.contentHorizontalAlignment = .left;
        btnStreaming.contentHorizontalAlignment = .left;
        btnVideogames.contentHorizontalAlignment = .left;
        
        dropShadow(view: btnRechargesPackages)
        dropShadow(view: btnRechargeTag)
        dropShadow(view: btnStreaming)
        dropShadow(view: btnVideogames)
    }
    
    func dropShadow(view: UIView, scale: Bool = true) {
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.3
        view.layer.shadowOffset = CGSize(width: -1, height: 1)
        view.layer.shadowRadius = 1

        // view.layer.shadowPath = UIBezierPath(rect: view.bounds).cgPath
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

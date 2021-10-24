//
//  GuestDashboardViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 23/10/21.
//

import UIKit

class GuestDashboardViewController: UIViewController {
    @IBOutlet weak var btnCircularRecharges: UIButton!
    @IBOutlet weak var btnCircularServices: UIButton!
    @IBOutlet weak var viewAddCard: UIView!
    @IBOutlet weak var viewCreateAccount: UIView!
    
    @IBOutlet weak var viewAddCardContainer: UIView!
    
    var diagonalSideView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .white
            return view
        }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        setupViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        makeDiagonalDividerShape(from: diagonalSideView)
    }
    
    private func setupViews() {
        view.addSubview(diagonalSideView)
        
        dropShadow(view: viewAddCardContainer)
        
        btnCircularServices.layer.cornerRadius = btnCircularServices.frame.size.width / 2
        btnCircularRecharges.layer.cornerRadius = btnCircularRecharges.frame.size.width / 2
        
        view.bringSubviewToFront(viewAddCard)
        view.bringSubviewToFront(viewCreateAccount)
        view.bringSubviewToFront(btnCircularRecharges)

        let heightConstraint = diagonalSideView.heightAnchor.constraint(equalTo: view.heightAnchor)
        let leftConstraint = diagonalSideView.leftAnchor.constraint(equalTo: view.leftAnchor)
        let rightConstraint = diagonalSideView.rightAnchor.constraint(equalTo: view.rightAnchor)
        let centerXConstraint = diagonalSideView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let centerYConstraint = diagonalSideView.centerYAnchor.constraint(equalTo: view.centerYAnchor)

        NSLayoutConstraint.activate([heightConstraint, leftConstraint, rightConstraint, centerXConstraint, centerYConstraint])
    }

    private func makeDiagonalDividerShape(from view: UIView) {
        let layer = CAShapeLayer()

        // Create Path
        let bezierPath = UIBezierPath()

        //  Points of the Polygon with Diagonal left side
        let pointA = CGPoint(x: view.bounds.origin.x, y: view.bounds.height / 2)
        let pointB = CGPoint(x: view.bounds.width, y: view.bounds.height / 3)
        let pointC = CGPoint(x: view.bounds.width, y: view.bounds.height)
        let pointD = CGPoint(x: 0, y: view.bounds.height)

        // Draw the path
        bezierPath.move(to: pointA)
        bezierPath.addLine(to: pointB)
        bezierPath.addLine(to: pointC)
        bezierPath.addLine(to: pointD)
        bezierPath.close()

        // Create the mask
        layer.path = bezierPath.cgPath
        view.layer.mask = layer
    }
    
    func dropShadow(view: UIView, scale: Bool = true) {
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: -1, height: 1)
        view.layer.shadowRadius = 1

        // view.layer.shadowPath = UIBezierPath(rect: view.bounds).cgPath
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

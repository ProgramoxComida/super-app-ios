//
//  NewMiPymeAccountViewController.swift
//  SuperApp
//
//  Created by Marco Ramirez on 23/10/21.
//

import UIKit

class NewMiPymeAccountViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var giroTextView: UITextField!
    @IBOutlet weak var ingresosMensualesTextView: UITextField!
    
    var selectedItem: String?
    var giroList = ["Tecnología de Información", "Restaurantes", "Venta de Mercancías", "Construcción", "Comunicaciones"]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        createPickerView()
        dismissPickerView()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return giroList.count // number of dropdown items
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return giroList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedItem = giroList[row] // selected item
        giroTextView.text = selectedItem
    }
    
    func createPickerView() {
        let pickerViewGiro = UIPickerView()
        let pickerViewIngresos = UIPickerView()
        
        pickerViewGiro.delegate = self
        pickerViewIngresos.delegate = self
        
        giroTextView.inputView = pickerViewGiro
    }
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
       
        giroTextView.inputAccessoryView = toolBar
    }
    
    @objc func action() {
          view.endEditing(true)
    }
}

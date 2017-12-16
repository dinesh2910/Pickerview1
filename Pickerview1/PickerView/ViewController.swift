//
//  ViewController.swift
//  PickerView
//
//  Created by dinesh danda 08/10/16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // ui obj
    var coolPickerView: UIPickerView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    // code obj
    var cities : [String]!
    
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PickerView Programmatically
        coolPickerView = UIPickerView()
        coolPickerView.frame = CGRect(x: 0, y: 300, width: self.view.bounds.width, height: 200)
        coolPickerView.showsSelectionIndicator = true
        coolPickerView.backgroundColor = .white
        coolPickerView.delegate = self
        coolPickerView.dataSource = self
        
        // self.view.addSubview(coolPickerView)
        
        
        // array of cities strings
        cities = ["London", "New York", "Berlin", "Moscow", "Rome", "Shanghai", "Tokyo", "Manila"]
        
        // allows us to call coolPickerView ONLY when we select TextField
        myTextField.inputView = coolPickerView
    }
    
    
    // total numb of components - Vertical
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // total numb of rows - Horizontal
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    // title for PickerView
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    // width of component - Vertical
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return self.view.bounds.width
    }
    
    // height of component - Horizontal
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    
    /*
    // customize rows' view - Horizontal
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView1 = UIView()
        myView1.backgroundColor = .red
        
        let myView2 = UIView()
        myView2.backgroundColor = .yellow
        
        let viewArray = [myView1, myView2]
        
        return viewArray[row]
 
    }
    */
    
    // called when did select some row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        myLabel.text = cities[row]
        
        // let selectedRow = pickerView.selectedRow(inComponent: component)
        // myLabel.text = "\(selectedRow)"
        
        // assign certain city to textField's text
        myTextField.text = cities[row]
        
        // dismiss keyboard
        myTextField.resignFirstResponder()
        
    }
    
    
}









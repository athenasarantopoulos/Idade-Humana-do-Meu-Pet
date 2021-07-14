//
//  dogViewController.swift
//  PetAge
//
//  Created by Athena Fernandes Sarantôpoulos on 13/07/21.
//

import UIKit

class dogViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    

    
    @IBOutlet weak var nameDogTextField: UITextField!
    @IBOutlet weak var showAgeLabel: UILabel!
    @IBOutlet weak var ageDogSlider: UISlider!
    @IBOutlet weak var textAgeLabel: UILabel!
    @IBOutlet weak var bearingPickerView: UIPickerView!
    
    var age: Int = 0
    var pickerData = ["Pequeno", "Médio", "Grande"]
    var bearing: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Connect data:
        bearingPickerView.delegate = self
        bearingPickerView.dataSource = self
        
        ageDogSlider.value = 6
        
       
    }
    @IBAction func ageChanged(_ sender: UISlider) {
        showAgeLabel.text = " \(Int(sender.value))"
        age = (Int(sender.value))
        
    }
    @IBAction func showText(_ sender: Any) {
        let name: String = nameDogTextField.text!
        let ageHuman = calculateAge(age: age, bearing: bearing)
        textAgeLabel.text = "\(name) possui \(ageHuman) anos em idade humana"
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            bearing =  pickerData[row]
            return pickerData[row]
    }


    
    func calculateAge(age: Int, bearing: String) -> Int {
        let ageCalculatorPequeno = [1:15, 2:24, 3:28, 4:32, 5:36, 6:40, 7:44, 8:48, 9:52, 10:56, 11:60, 12:64, 13:68, 14:72, 15:76, 16:80]
        let ageCalculatorMedio = [1:15, 2:24, 3:28, 4:32, 5:36, 6:42, 7:47, 8:51, 9:56, 10:60, 11:65, 12:69, 13:74, 14:78, 15:83, 16:87]
        let ageCalculatorGrande = [1:15, 2:24, 3:28, 4:32, 5:36, 6:45, 7:50, 8:55, 9:61, 10:66, 11:72, 12:77, 13:82, 14:88, 15:93, 16:120]
        
        switch bearing {
        case "Pequeno":
            return ageCalculatorPequeno[age]!
        case "Médio":
            return ageCalculatorMedio[age]!
        case "Grande":
            return ageCalculatorGrande[age]!
        default:
            return 0
        }
     
        
    }
}

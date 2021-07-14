//
//  catViewController.swift
//  PetAge
//
//  Created by Athena Fernandes Sarantôpoulos on 13/07/21.
//

import UIKit

class catViewController: UIViewController {

    @IBOutlet weak var catAgeSlider: UISlider!
    @IBOutlet weak var showAgeLabel: UILabel!
    @IBOutlet weak var showCalculateAgeLabel: UILabel!
    @IBOutlet weak var nameCatTextField: UITextField!
    
    var age: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        catAgeSlider.value = 6
    }

    @IBAction func changeAge(_ sender: UISlider) {
        showAgeLabel.text = " \(Int(sender.value))"
        age = (Int(sender.value))
    }
    
    @IBAction func calculateAgeButton(_ sender: Any) {
        let name: String = nameCatTextField.text!
        
        let ageHuman = calculateAge(age: age)
        
        showCalculateAgeLabel.text = "\(name) possui \(ageHuman) anos em idade humana"
        
    }
    
    func calculateAge(age: Int) -> Int {
        let ageCalculator = [1:15, 2:24, 3:28, 4:32, 5:36, 6:40, 7:44, 8:48, 9:52, 10:56, 11:60, 12:64, 13:68, 14:72, 15:76, 16:80, 17:84, 18:88, 19:89, 20:93, 21:96, 22:99, 23:103]
        
        return ageCalculator[age]!
    }
}

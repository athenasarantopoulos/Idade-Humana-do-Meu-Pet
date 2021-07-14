//
//  ViewController.swift
//  PetAge
//
//  Created by Athena Fernandes Sarantôpoulos on 13/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var dogImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catImageView.isUserInteractionEnabled = true
        dogImageView.isUserInteractionEnabled = true
        
        catImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.catTap)))
        dogImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dogTap)))
	
    }
    
    @objc func catTap() {
        // present modally
        performSegue(withIdentifier: "catViewController", sender: nil)
    }

    @objc func dogTap() {
        // present modally
        performSegue(withIdentifier: "dogViewController", sender: nil)
    }

}


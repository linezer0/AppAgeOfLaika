//
//  ViewController.swift
//  Age of Laika
//
//  Created by Thomas Parker on 06/11/2014.
//  Copyright (c) 2014 Thomas Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsResultLabel: UILabel!
    @IBOutlet weak var laikaStampImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        var humanYearsInt = humanYearsTextField.text.toInt()
        var dogYearsInt = humanYearsInt! / 7
        laikaStampImageView.hidden = false
        dogYearsResultLabel.text = "If you were a dog, you would be \(dogYearsInt) years old"
        dogYearsResultLabel.hidden = false
        humanYearsTextField.text = ""
        self.humanYearsTextField.resignFirstResponder()
    }

}


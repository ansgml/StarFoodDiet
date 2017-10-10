//
//  NameViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class NameViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var sexSegment: UISegmentedControl!
    
    @IBOutlet var kgLabel: UILabel!
    @IBOutlet var stepper: UIStepper!
    var kgkg : String?
    @IBAction func kgStepper(_ sender: UIStepper) {
        kgLabel.text = (String)(sender.value)
        kgkg = kgLabel.text!
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLevelView"{
            
            let destVC = segue.destination as! LevelViewController
            
            let userName: String! = nameTextField.text
            let userSex: String! = sexSegment.titleForSegment(at: sexSegment.selectedSegmentIndex)

            var outString: String = "("
            outString += userSex
            outString += ")"
            outString += userName
            destVC.name = outString
            destVC.easykg = stepper.value
            destVC.medkg = stepper.value
            destVC.hardkg = stepper.value

            //destVC.name = userName
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

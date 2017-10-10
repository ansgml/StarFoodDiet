//
//  MideumViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MideumViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var mediumLabel: UILabel!
    @IBOutlet var mediumPicker: UIPickerView!
    
    let mediumArray:[String] = ["강민경","박신혜","서인국","수지","에일리"]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toMediumDiet"{
            
            let destVC = segue.destination as! MediumStarViewController
            let starName: String! = mediumLabel.text
            
            destVC.name = starName
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mediumPicker.dataSource=self
        mediumPicker.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mediumArray[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mediumArray.count
    }
    @IBAction func getValue(_ sender: Any) {
        let starName: String = mediumArray[self.mediumPicker.selectedRow(inComponent: 0)]
        mediumLabel.text=starName
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

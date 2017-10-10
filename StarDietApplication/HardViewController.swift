//
//  HardViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class HardViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var hardLabel: UILabel!
    @IBOutlet var hardPicker: UIPickerView!
    
    let hardArray:[String] = ["서효림","아이유","이하늬","정채연","황정음"]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toHardDiet"{
            
            let harddestVC = segue.destination as! HardStarViewController
            let starName: String! = hardLabel.text
            
            harddestVC.name = starName
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        hardPicker.dataSource=self
        hardPicker.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return hardArray[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hardArray.count
    }

    
    @IBAction func getValue(_ sender: Any) {
        let starName: String = hardArray[self.hardPicker.selectedRow(inComponent: 0)]
        
        hardLabel.text=starName
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

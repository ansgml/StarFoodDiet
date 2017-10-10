//
//  EasyViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class EasyViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var easyPicker: UIPickerView!
    @IBOutlet var easyLabel: UILabel!
    
    var easyArray=["노유민","서인영","시우민","윤은혜","전혜빈"]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toEasyDiet"{
        
            let destVC = segue.destination as! EasyStarViewController
            let starName: String! = easyLabel.text
            
            destVC.name = starName
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        easyPicker.delegate = self
        easyPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return easyArray[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return easyArray.count
    }
    @IBAction func getValue(_ sender: Any) {
        let diet:String = easyArray[self.easyPicker.selectedRow(inComponent: 0)]
        
        easyLabel.text=diet
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

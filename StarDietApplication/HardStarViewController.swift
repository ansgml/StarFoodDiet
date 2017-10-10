//
//  HardStarViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class HardStarViewController: UIViewController {
    @IBOutlet var starLabel: UILabel!
    var name:String?
    
    @IBOutlet var leehanye: UIView!
    @IBOutlet var jeongchaeyeon: UIView!
    @IBOutlet var IU: UIView!
    @IBOutlet var hwangjeongyeom: UIView!
    @IBOutlet var seohyolim: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let starString = name{
            starLabel.text = starString
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMe(_ sender: Any) {
        if starLabel.text == "이하늬"{
            self.leehanye.isHidden = false
        }
        if starLabel.text == "정채연"{
            self.jeongchaeyeon.isHidden = false
        }
        if starLabel.text == "아이유"{
            self.IU.isHidden = false
        }
        if starLabel.text == "황정음"{
            self.hwangjeongyeom.isHidden = false
        }
        if starLabel.text == "서효림"{
            self.seohyolim.isHidden = false
        }

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

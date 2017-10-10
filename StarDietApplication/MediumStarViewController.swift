//
//  MediumStarViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MediumStarViewController: UIViewController {
    @IBOutlet var starLabel: UILabel!
    var name:String?
    
    @IBOutlet var minkyeong: UIView!
    @IBOutlet var suji: UIView!
    @IBOutlet var seoinguk: UIView!
    @IBOutlet var aily: UIView!
    @IBOutlet var parkshinhye: UIView!
    
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
    
    @IBAction func Showme(_ sender: Any) {
        if starLabel.text == "강민경"{
            self.minkyeong.isHidden = false
        }
        if starLabel.text == "수지"{
            self.suji.isHidden = false
        }
        if starLabel.text == "박신혜"{
            self.parkshinhye.isHidden = false
        }
        if starLabel.text == "서인국"{
            self.seoinguk.isHidden = false
        }
        if starLabel.text == "에일리"{
            self.aily.isHidden = false
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

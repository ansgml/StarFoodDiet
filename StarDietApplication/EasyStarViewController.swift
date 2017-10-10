//
//  EasyStarViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class EasyStarViewController: UIViewController {
    @IBOutlet var starName: UILabel!
    var name:String?
    
    @IBOutlet var noyumin: UIView!
    @IBOutlet var seoinyeong: UIView!
    @IBOutlet var siwoomin: UIView!
    @IBOutlet var yuneunhye: UIView!
    @IBOutlet var hyebin: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let starString = name{
            starName.text = starString
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func showme(_ sender: Any) {
        if starName.text == "노유민"{
            self.noyumin.isHidden = false
        }
        if starName.text == "서인영"{
            self.seoinyeong.isHidden = false
        }
        if starName.text == "시우민"{
            self.siwoomin.isHidden = false
        }
        if starName.text == "윤은혜"{
            self.yuneunhye.isHidden = false
        }
        if starName.text == "전혜빈"{
            self.hyebin.isHidden = false
            
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

//
//  LevelViewController.swift
//  StarDietApplication
//
//  Created by SWUCOMPUTER on 2017. 10. 6..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var easyLabel: UILabel!
    @IBOutlet var mediumLabel: UILabel!
    @IBOutlet var hardLabel: UILabel!
    var name:String?
    var easykg:Double?
    var medkg:Double?
    var hardkg:Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contentString = name{
            nameLabel.text=contentString
        }
        if let kgString = easykg {
            easyLabel.text = (String)(kgString-5)+"kg까지 감량가능!"
        }
        if let kgString = medkg{
            mediumLabel.text = (String)(kgString-10)+"kg까지 감량가능!"
        }
        if let kgString = hardkg{
            hardLabel.text = (String)(kgString-15)+"kg까지 감량가능!"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

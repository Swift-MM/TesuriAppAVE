//
//  Flat_aViewController.swift
//  TesuriApp
//
//  Created by nowall on 2016/11/19.
//  Copyright © 2016年 nowall. All rights reserved.
//

import UIKit

class Flat_aViewController: UIViewController {
    
    
    //エルボの値をdicに格納
    var dic:[String:[String:Double]] = [:]
    
    //サイズの値をSeconddicに格納
    var Seconddic:[String:Double] = [:]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("on view did load")
        let ud = UserDefaults.standard
        print(ud.object(forKey: "Aa") as? String)
        print(ud.object(forKey: "Ba") as? String)
        print(ud.object(forKey: "Ca") as? String)
        print(ud.object(forKey: "Da") as? String)
        A_ans.text = ud.object(forKey: "Aa") as? String
        B_ans.text = ud.object(forKey: "Ba") as? String
        C_ans.text = ud.object(forKey: "Ca") as? String
        D_ans.text = ud.object(forKey: "Da") as? String

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var A_ans: UILabel!
    
    
    @IBOutlet weak var B_ans: UILabel!
    
    
    @IBOutlet weak var C_ans: UILabel!
    
    
    @IBOutlet weak var D_ans: UILabel!
    
    
    @IBAction func Back(_ sender: UIButton) {
        
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

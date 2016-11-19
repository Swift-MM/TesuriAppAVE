//
//  FlatViewController.swift
//  TesuriApp
//
//  Created by nowall on 2016/11/19.
//  Copyright © 2016年 nowall. All rights reserved.
//

import UIKit

class FlatViewController: UIViewController {

   //エルボの値を
    var dic:[String:[String:Double]] = [:]
    
    var Seconddic:[String:Double] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let filePath = Bundle.main.path(forResource: "Property_eList.plist", ofType:nil )
        dic = NSDictionary(contentsOfFile:filePath!) as! [String:[String : Double]]
        
        let SecondfilePath = Bundle.main.path(forResource: "Property_sList.plist", ofType:nil )
         Seconddic = NSDictionary(contentsOfFile:SecondfilePath!) as! [String : Double]
        
        
print(dic)

        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //柱の数を紐付け
    @IBOutlet weak var 柱の数: UITextField!

    //柱のサイズを紐付け
    @IBOutlet weak var サイズ: UISegmentedControl!
    
    //中の柱を紐付け
    @IBOutlet weak var 中の柱: UISegmentedControl!
    
    //横材を紐付け
    @IBOutlet weak var 横材: UISegmentedControl!
    
    //横のサイズを紐付け
    @IBOutlet weak var 横のサイズ: UISegmentedControl!
    
    //エルボを紐付け
    @IBOutlet weak var エルボ: UISegmentedControl!
    
    //ザグリ寸法を紐付け
    @IBOutlet weak var ザグリ寸法: UITextField!
    
    //Aの値を紐付け
    @IBOutlet weak var A: UITextField!
    
    //Bの値を紐付け
    @IBOutlet weak var B: UITextField!
    
    //Cの値を紐付け
    @IBOutlet weak var C: UITextField!
    
    //Dの値を紐付け
    @IBOutlet weak var D: UITextField!
    
    //計算ボタンを宣言
    @IBAction func 計算(_ sender: Any) {
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

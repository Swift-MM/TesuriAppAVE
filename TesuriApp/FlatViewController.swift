//
//  FlatViewController.swift
//  TesuriApp
//
//  Created by nowall on 2016/11/19.
//  Copyright © 2016年 nowall. All rights reserved.
//

import UIKit

class FlatViewController: UIViewController {
    
    //エルボの値をdicに格納
    var dic:[String:[String:Double]] = [:]
    
    //サイズの値をSeconddicに格納
    var Seconddic:[String:Double] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ここにエルボのpristを呼び出している
        let filePath = Bundle.main.path(forResource: "Property_eList.plist", ofType:nil )
        dic = NSDictionary(contentsOfFile:filePath!) as! [String:[String : Double]]
        
        //サイズのpristを呼び出している
        let SecondfilePath = Bundle.main.path(forResource: "Property_sList.plist", ofType:nil )
        Seconddic = NSDictionary(contentsOfFile:SecondfilePath!) as! [String : Double]
        
        
        print(dic)
        //サイズの値が何を押されたのか判定
       

        
        
//        let index:Int = segmentsize.selectedSegmentIndex
//        let selectedString: String = segmentsize.titleForSegment(at: index)!
//        print(selectedString)
//        
//        
        
        
        var size = dic["Long"]?["25A"]
        
        print(size)
        
        
        
        
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
        //サイズの項目で何が選ばれたかをsizeに格納
        let size:Int = サイズ.selectedSegmentIndex
        //中の柱の項目で何が選ばれたかをpillarに格納
        let pillar:Int = 中の柱.selectedSegmentIndex
        //横材の項目で何が選ばれたかをsideに格納
        let side:Int = 横材.selectedSegmentIndex
        //横のサイズの項目で何が選ばれたかをsize2に格納
        let size2:Int = 横のサイズ.selectedSegmentIndex
        //エルボの項目で何が選ばれたかをelboに格納
        let elbo:Int = エルボ.selectedSegmentIndex
        //ザグリ寸法の項目にどんな値が入ったかをzaguriに格納
        let zaguri:String = ザグリ寸法.text!
        print(zaguri)
        
        
        let ud = UserDefaults.standard
        let udId : [String : Double] = ud.object(forKey: "id") as![String : Double]
        print (udId)
//        
//        let A_ans = C - dic[String][Int]
//        let B_ans = D - dic[String][Int] / 2 + ザグリ寸法
//        let C_ans = A - dic[String][Int] * 2
//        let D_ans = B - dic[String][Int] / 2 - 中の柱 / 2
//        
//

        
        
        
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

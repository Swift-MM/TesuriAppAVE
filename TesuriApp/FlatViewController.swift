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
        
        //サイズのsristを呼び出している
        let SecondfilePath = Bundle.main.path(forResource: "Property_sList.plist", ofType:nil )
        Seconddic = NSDictionary(contentsOfFile:SecondfilePath!) as! [String : Double]
        
        
        print(dic)
        
        
        
        
        //        let index:Int = segmentsize.selectedSegmentIndex
        //        let selectedString: String = segmentsize.titleForSegment(at: index)!
        //        print(selectedString)
        //
        //
        
        //        //サイズの値が何を押されたのか判定
        //        var size = dic["Long"]?["25A"]
        //
        //        print(size)
        //
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tapScreen(_ sender: UITapGestureRecognizer) {
        
        self.view.endEditing(true)
    }
    
    
    @IBAction func textend(_ sender: Any) {
    }
    @IBAction func textend2(_ sender: Any) {
    }
    @IBAction func textend3(_ sender: Any) {
    }
    @IBAction func textend4(_ sender: Any) {
    }
    @IBAction func textend5(_ sender: Any) {
    }
    @IBAction func textend6(_ sender: Any) {
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
        //中の柱の項目で何が選ばれたかをpillar2に格納
        let pillar2:Int = 中の柱.selectedSegmentIndex
        //横材の項目で何が選ばれたかをsideに格納
        let side:Int = 横材.selectedSegmentIndex
        //横のサイズの項目で何が選ばれたかをsize2に格納
        let size2:Int = 横のサイズ.selectedSegmentIndex
        //エルボの項目で何が選ばれたかをelboに格納
        let elbo:Int = エルボ.selectedSegmentIndex
        //ザグリ寸法の項目にどんな値が入ったかをzaguriに格納
        let zaguri:String = ザグリ寸法.text!
        //Aの項目にどんな値が入ったかをAに格納
        let A:String = self.A.text!
        //Bの項目にどんな値が入ったかをBに格納
        let B:String = self.B.text!
        //Cの項目にどんな値が入ったかをCに格納
        let C:String = self.C.text!
        //Dの項目にどんな値が入ったかをDに格納
        let D:String = self.D.text!
        
        
        
        
        //pillarboxという箱に柱の数を代入してguardで{}の外でも使えるようにした
        //柱の数はString型だけどpillarboxにはInt型なのでもしエラーで落ちたら処理を戻れるようにreturnを書いた
        //        guard let pillarbox = 柱の数.text!.else{
        //            print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
        //            return
        //        }
        //
        let pillerbox = NumberFormatter().number(from: 柱の数.text!)
        
        
        print("tttttttttttttttttttttt")
        print(pillerbox)
        
        
        
        //sboxという箱をここで用意
        var sbox:String = "10A"
        
        //もしサイズの欄で０が選ばれたら10Aをsboxに代入
        if サイズ.selectedSegmentIndex == 0 {
            sbox = "10A"
        }
            //もしサイズの欄で１が選ばれたら15Aをsboxに代入
        else if サイズ.selectedSegmentIndex == 1 {
            sbox = "15A"
        }
            //もしサイズの欄で2が選ばれたら20Aをsboxに代入
        else if サイズ.selectedSegmentIndex == 2 {
            sbox = "20A"
        }
            //もしサイズの欄で3が選ばれたら25Aをsboxに代入
        else if サイズ.selectedSegmentIndex == 3 {
            sbox = "25A"
        }
            //もしサイズの欄で4が選ばれたら32Aをsboxに代入
        else if サイズ.selectedSegmentIndex == 4 {
            sbox = "32A"
        }
            //もしサイズの欄で5が選ばれたら40Aをsboxに代入
        else if サイズ.selectedSegmentIndex == 5 {
            sbox = "40A"
        }
        
        print(sbox)
        
        
        //p2boxという箱をここで用意
        var p2box:String = "10A"
        
        //もし中の柱の欄で０が選ばれたら10Aをp2boxに代入
        if 中の柱.selectedSegmentIndex == 0 {
            p2box = "10A"
        }
            //もし中の柱の欄で１が選ばれたら15Aをp2boxに代入
        else if 中の柱.selectedSegmentIndex == 1 {
            p2box = "15A"
        }
            //もし中の柱の欄で2が選ばれたら20Aをp2boxに代入
        else if 中の柱.selectedSegmentIndex == 2 {
            p2box = "20A"
        }
            //もし中の柱の欄で3が選ばれたら25Aをp2boxに代入
        else if 中の柱.selectedSegmentIndex == 3 {
            p2box = "25A"
        }
            //もし中の柱の欄で4が選ばれたら32Aをp2boxに代入
        else if サイズ.selectedSegmentIndex == 4 {
            p2box = "32A"
        }
            //もし中の柱の欄で5が選ばれたら40Aをp2boxに代入
        else if 中の柱.selectedSegmentIndex == 5 {
            p2box = "40A"
        }
        
        print(p2box)
        
        
        //sideboxという箱をここで用意
        var sidebox:String = "0段"
        
        //もし横材の欄で０が選ばれたら0段をsideboxに代入
        if 横材.selectedSegmentIndex == 0 {
            sidebox = "0段"
        }
            //もし横材の欄で１が選ばれたら1段をsideboxに代入
        else if 横材.selectedSegmentIndex == 1 {
            sidebox = "1段"
        }
            //もし横材の欄で2が選ばれたら2段をsideboxに代入
        else if 横材.selectedSegmentIndex == 2 {
            sidebox = "2段"
        }
        
        print(sidebox)
        
        
        
        
        
        //s2boxという箱をここで用意
        var s2box:String = "10A"
        
        //もし横のサイズの欄で０が選ばれたら10Aをs2boxに代入
        if 横のサイズ.selectedSegmentIndex == 0 {
            s2box = "10A"
        }
            //もし横のサイズの欄で１が選ばれたら15Aをs2boxに代入
        else if 横のサイズ.selectedSegmentIndex == 1 {
            s2box = "15A"
        }
            //もし横のサイズの欄で2が選ばれたら20Aをs2boxに代入
        else if 横のサイズ.selectedSegmentIndex == 2 {
            s2box = "20A"
        }
            //もし横のサイズの欄で3が選ばれたら25Aをs2boxに代入
        else if 横のサイズ.selectedSegmentIndex == 3 {
            s2box = "25A"
        }
            //もし横のサイズの欄で4が選ばれたら32Aをs2boxに代入
        else if 横のサイズ.selectedSegmentIndex == 4 {
            s2box = "32A"
        }
            //もし横のサイズの欄で5が選ばれたら40Aをs2boxに代入
        else if 横のサイズ.selectedSegmentIndex == 5 {
            s2box = "40A"
        }
        
        print(s2box)
        
        
        
        
        //eboxという箱をここで用意
        var ebox:String = "Long"
        
        //もしエルボの欄で０が選ばれたらロングをeboxに代入
        if エルボ.selectedSegmentIndex == 0 {
            ebox = "Long"
        }
            //もしエルボの欄で１が選ばれたらショートをeboxに代入
        else if エルボ.selectedSegmentIndex == 1 {
            ebox = "short"
        }
        
        print (ebox)
        
        //        guard let zaguribox = ザグリ寸法.text as? Double else{
        //             print("bbbbbbbbbbbbbbbbbbbbb")
        //            return
        //        }
        
        
        let zaguribox:Double = NumberFormatter().number(from: ザグリ寸法.text!) as! Double
        print(zaguribox)
        
        
        //        guard let Abox = A as? Double else{
        //            print("ggggggggggggggggggggggggg")
        //            return
        //        }
        
        let Abox:Double = NumberFormatter().number(from: A) as! Double
        
        
        
        //        print(Abox)
        //
        //
        //        guard let Bbox = B as? Double else{
        //            print("wwwwwwwwwwwwwwwwwwwwwwwwwwww")
        //            return
        //        }
        
        let Bbox:Double = NumberFormatter().number(from: B) as! Double
        
        
        //
        //        print(Abox)
        //
        //        guard let Cbox = C as? Double else{
        //            print("qqqqqqqqqqqqqqqqqqqqqqqqqqq")
        //            return
        //        }
        //
        let Cbox:Double = NumberFormatter().number(from: C) as! Double
        
        
        
        //        print(Abox)
        //
        //        guard let Dbox = D as? Double else{
        //            print("yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy")
        //            return
        //        }
        //
        let Dbox:Double = NumberFormatter().number(from: D) as! Double
        
        
        
        
        //        print(Abox)
        //
        //
        //
        //
        //
        //        //        let ud = UserDefaults.standard
        //        //        let udId : [String : Double] = ud.object(forKey: "id") as![String : Double]
        //        //        print (udId)
        //
        let Aans = Cbox - (dic[ebox]?[sbox])!
        let Bans = Dbox - (Seconddic[sbox])! / 2 + zaguribox
        let Cans = Abox - (dic[ebox]?[sbox])! * 2
        let Dans = Bbox - (Seconddic[sbox])! / 2 - (Seconddic[p2box])! / 2
        
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
        print(Aans)
        
        
        
        let ud = UserDefaults.standard
      
        ud.setValue(String(Aans), forKey: "Aa")
        ud.setValue(String(Bans), forKey: "Ba")
        ud.setValue(String(Cans), forKey: "Ca")
        ud.setValue(String(Dans), forKey: "Da")
        
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

//
//  ViewController.swift
//  dentaku_2016
//
//  Created by jinikuadmin on 2017/01/15.
//  Copyright © 2017年 jinikuadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calc_form = Array(repeating: "", count: 100)
    var num=0
    
    @IBOutlet weak var lbl_calc_form: UILabel!
    //calc_formの要素を表示させる
    
    @IBOutlet weak var answer: UILabel!
    //answer答え出す
    
    @IBAction func button_0(_ sender: UIButton) {
        calc_form[num]="0"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_1(_ sender: UIButton) {
        calc_form[num]="1"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_2(_ sender: UIButton) {
        calc_form[num]="2"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_3(_ sender: UIButton) {
        calc_form[num]="3"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_4(_ sender: UIButton) {
        calc_form[num]="4"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_5(_ sender: UIButton) {
        calc_form[num]="5"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_6(_ sender: UIButton) {
        calc_form[num]="6"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_7(_ sender: UIButton) {
        calc_form[num]="7"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_8(_ sender: UIButton) {
        calc_form[num]="8"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_9(_ sender: UIButton) {
        calc_form[num]="9"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_dot(_ sender: UIButton) {
        calc_form[num]="."
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_equal(_ sender: UIButton) {
        /*計算する*/
        //計算結果 = クラスCalcの計算するメソッド(計算式（calc_formの配列）)から呼び出されるreturn値
        let calcR=Calc()
        var result:Double = calcR.calc_result(calc_form: calc_form, num:num)
        print("result=\(result)")
        num=0 //式の長さをリセット
        answer.text = String(result)
        //return値を表示するメソッドを呼び出す
    }
    
    @IBAction func button_crl(_ sender: UIButton) {
        /*数式をリセットする=配列を初期化*/
        print("----初期化実行----")
        for i in 0 ..< num {
            calc_form[i] = ""
            print("calc_form[\(i)] = \(calc_form[i])")
        }
        num = 0
        print_calc_form()
        answer.text = ""
        print("----初期化終了----")
    }
    
    @IBAction func button_div(_ sender: UIButton) {
        calc_form[num]="÷"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_times(_ sender: UIButton) {
        calc_form[num]="×"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_minus(_ sender: UIButton) {
        calc_form[num]="-"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    @IBAction func button_plus(_ sender: UIButton) {
        calc_form[num]="+"
        //print("calc_form[\(num)] = \(calc_form[num])")
        num+=1
        print_calc_form()
    }
    
    
    
    
    
    func print_calc_form() -> Void {
        var form: String
        form = ""
        for i in 0..<num {
            form = form + calc_form[i]
        }
        lbl_calc_form.text = form
        print(form)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //lbl_calc_form.text=print_calc_form()
        // print("viewDidLoad()  \(lbl_calc_form)")
        //print(print_calc_form())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


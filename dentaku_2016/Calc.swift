//
//  Calc.swift
//  dentaku_2016
//
//  Created by jinikuadmin on 2017/01/15.
//  Copyright © 2017年 jinikuadmin. All rights reserved.
//
//memo
//数字の最初が"."のとき、演算子だった時
//０番目に”０”を入れてるnow、先頭に記号がはいっても計算できるように


import Foundation

class Calc {
    func calc_result(calc_form: [String], num:Int) -> Double {
        var result:Double=0 //結果格納用
        var form_num = Array(repeating: 0.0, count: 100)//計算式の”数字”を格納する配列
        var form_sym = Array(repeating: "", count:100)//計算式の”記号”を格納する配列
        var n_num:Int=0 //form_numの要素数
        var s_num:Int=0 //form_symの要素数
        var temp_str:String="" //一時的な文字列格納用
        
        /*計算式を”数字”と”記号”に分ける*/
        for i in 0 ..< num{
            /*記号なら*/
            /*乗算、除算の順序を守るためには、*,/が来るまで読み飛ばして、先に配列に格納していく。確定している配列番号を記憶して*/
            if(calc_form[i]=="+" || calc_form[i]=="-" || calc_form[i]=="×" || calc_form[i]=="÷" /*|| calc_form[i]=="."*/) {
                form_sym[s_num]=calc_form[i] //記号を格納する
                if(calc_form[i-1]==".") {
                    temp_str+="0"
                }//もし直前の文字が"."だったら、０を補完
                form_num[n_num]=Double(temp_str)! //数字を格納する
                s_num+=1 //次へ
                n_num+=1 //次へ
                temp_str="" //初期化
            }else {//記号以外なら数字なので一時的に文字列としてtemp_strへ追加
                temp_str+=calc_form[i]
            }
        }
        form_num[n_num]=Double(temp_str)! //最後の数字を格納
        n_num+=1 //最後の数字分追加
        
        print("数字の数=\(n_num), 演算子の数=\(s_num)")
        /*デバッグ用*/
        for i in 0 ..< s_num{
            print(form_num[i])
            print(form_sym[i])
        }
        print(form_num[n_num-1])
        
        /*実際に計算する*/
        for i in 0 ..< s_num {
            form_num[i+1]=calc_sub(num1: form_num[i], num2: form_num[i+1], ope:form_sym[i])
        }
        result = form_num[n_num-1]
        return result
    }
    
    func calc_sub(num1:Double, num2:Double, ope:String) -> Double {
        var result_sub:Double=0
        print("num1=\(num1), num2=\(num2), ope=\(ope)")
        if(ope=="+") {
            result_sub=num1+num2
        }else if(ope=="-") {
            result_sub=num1-num2
        }else if(ope=="×") {
            result_sub=num1*num2
        }else if(ope=="÷") {
            result_sub=num1/num2
        }
        //print("result_sub=\(result_sub)")
        return result_sub
    }
}

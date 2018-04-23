//
//  AViewController.swift
//  ModelPractice
//
//  Created by Ryohei Nanano on 2018/04/23.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!//入力内容
    @IBOutlet weak var goButton: UIButton!
    
    let storyboardID = "BViewController"
    let storyboardName = "B"
    
    //==========ライフサイクル==========
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self//delegateを自分自身に指定
        
        buttonCustomize(button: goButton)//goButtonの見た目変更

    }

    

    
    
    
    //==========関数・メソッド==========
    
    //ボタンの見た目変更する関数
    func buttonCustomize(button : UIButton)//引数にUIButton型の変数buttonとる
    {
        button.layer.borderWidth = 0.5// 枠線の幅
        button.layer.borderColor = UIColor.black.cgColor// 枠線の色
        button.layer.cornerRadius = 5.0//角丸
    }
    
    @IBAction func pushedButton(){//goButton押された時に呼ばれる関数
        if textField.text! != ""{//←『textField.text != nil』じゃだめみたい。なんでだろ。
            
            Data.sharedInstance.inputText = textField.text!
            
            //画面遷移のコード
            let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)//①先ずは遷移先のStoryboardを取ってくる
            let BViewController = storyboard.instantiateViewController(withIdentifier: storyboardID)//②画面遷移先のViewControllerを取ってくる！
            navigationController?.pushViewController(BViewController, animated: true)//取って来たViewControllerにpushで画面遷移！
        }
        else{
            print("UNKO")
        }
    }

}

extension AViewController: UITextFieldDelegate{}//TextField使う為のextention

//
//  Data.swift
//  ModelPractice
//
//  Created by Ryohei Nanano on 2018/04/23.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit
import Foundation

class Data: NSObject {
    var inputText: String = ""
    //AViewControllerで入力された値を保持しておく為のやーつ
    
    //シングルトン設計にする時はこの2行書けばおっけい！(？)
    static let sharedInstance: Data = Data()//Dataをシングルトン化
    private override init() {}//外部からのインスタンス生成をコンパイルレベルで禁止
}

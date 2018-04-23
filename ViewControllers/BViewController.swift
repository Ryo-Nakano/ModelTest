//
//  BViewController.swift
//  ModelPractice
//
//  Created by Ryohei Nanano on 2018/04/23.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = Data.sharedInstance.inputText
    }

  
}

//
//  ViewController.swift
//  randomGame
//
//  Created by D7703_06 on 2018. 3. 26..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var randomText: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomText.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func random(_ sender: UIButton) {
        let num = arc4random_uniform(6)
        print(num)
        if randomText.text == String(num) {
            result.text = "성공"
           
        }
        else{
            result.text = "실패. 답은 \(num)"
            
        }
       randomText.resignFirstResponder();
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        let num = arc4random_uniform(6)
        print(num)
        if randomText.text == String(num) {
            result.text = "성공"
            
        }
        else{
            result.text = "실패. 답은 \(num)"
        }
        randomText.resignFirstResponder();
        return true
    }
    
}


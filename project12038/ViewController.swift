//
//  ViewController.swift
//  project12038
//
//  Created by 소프트웨어컴퓨터 on 2020/11/24.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var kgtxt: UITextField!
    @IBOutlet var agtxt: UITextField!
    @IBOutlet var feedtxt: UITextField!
    @IBOutlet var onekcaltxt: UITextField!
    @IBOutlet var feedgtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func catkcal(_ sender: UIButton) {
        if kgtxt.text == "" || agtxt.text == "" || feedtxt.text == "" {
            print("Input error")
            onekcaltxt.text = "다시 입력하세요"
            feedgtxt.text = "다시 입력하세요"
        }else {
        let kg = Double(kgtxt.text!)!
        let ag = Double(agtxt.text!)!
        let feed = Double(feedtxt.text!)!
        let rer = 30 * kg + 70
        let mer = ag * rer
        let oneDaykcal = String(format : "%.2f", ag * rer )
        let oneDayFeed = String(format : "%.2f", mer / feed * 1000 )
        
        onekcaltxt.text = "\(oneDaykcal)"
        feedgtxt.text = "\(oneDayFeed)"
        }
    }
    

}


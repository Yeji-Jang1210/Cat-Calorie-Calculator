//
//  WebViewController.swift
//  project12038
//
//  Created by 소프트웨어컴퓨터 on 2020/11/24.
//

import UIKit
import WebKit
class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://www.notion.so/16ac377f93284662a237f73b521ac476?pvs=4") else {return}
        let request = URLRequest(url: url)
        webView?.load(request)
    }
    
}

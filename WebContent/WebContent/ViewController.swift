//
//  ViewController.swift
//  WebContent
//
//  Created by Luis Ramirez on 6/6/17.
//  Copyright © 2017 Lucho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var urlWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "http://www.cimebi.com") {
        
//        urlWebView.loadRequest(URLRequest(url: url))
        
//        let html = "<h1>Form inside the app</h1><br><form method='post' action='#'><input type='text' name='name' placeholder='Escriba su nombre' /><br><input type='submit' name='Enviar' /></form>"
//        
//        urlWebView.loadHTMLString(html, baseURL: nil)
        
        
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                if(error != nil) {
                    print("There was an error.")
                } else {
                    if let recievedData = data {
                        let dataString = NSString(data: recievedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString!)
                    }
                }
                
            }
            
            task.resume()
            
          }
    }


    
}


//
//  ViewController.swift
//  webServicesExample
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    
    @IBOutlet weak var requestActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getJoke(_ sender: Any) {
        
        //jokeLabel.text = "It works"
        requestActivityIndicator.startAnimating()
        let dao = ChuckDAO()
        dao.getJokeFromApi { (joke) in
            self.jokeLabel.text = joke
            self.requestActivityIndicator.stopAnimating()
        }
               
                
        }
        
        
        
    }
    



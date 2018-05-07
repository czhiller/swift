//
//  ViewController.swift
//  firstLib
//
//  Created by iOS on 7/5/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://economia.icaew.com/-/media/economia/images/thumbnail-images/newyorkcity800.ashx")!
        theImageView.kf.setImage(with: url)
        theImageView.kf.setImage(with: url, placeholder: UIImage(named: "placeholder"), options: nil, progressBlock: nil, completionHandler: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


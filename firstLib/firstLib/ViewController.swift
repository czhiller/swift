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
        
        //Animaciones
        //UIView.animate(withDuration: 3, animations: animacionImagen)
//        UIView.animate(withDuration: 3) {
//            self.theImageView.center.y += 100
//        }
    }

    func animacionImagen() {
        theImageView.center.y += 100
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateButton(_ sender: Any) {
        UIView.animate(withDuration: 3) {
            self.theImageView.center.y += 100
            self.theImageView.stopAnimating()
        }
    }
    
}


//
//  CyanViewController.swift
//  botonesRGB
//
//  Created by iOS on 9/4/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit

class CyanViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    
    var myText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        theLabel.text = myText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

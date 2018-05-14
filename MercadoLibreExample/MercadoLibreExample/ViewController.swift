//
//  ViewController.swift
//  MercadoLibreExample
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var queryTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ProductsTableViewController {
            destination.query = queryTextfield.text
        }
    }
}


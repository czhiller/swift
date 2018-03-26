//
//  ViewController.swift
//  iosProject
//
//  Created by iOS on 26/3/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did load")
        // Do any additional setup after loading the view, typically from a nib.
        myButton.titleLabel?.text = "0" //esto no funciona porque tengo que usar un setter
        // con esto puedo cambiar de color el background!
        //view.backgroundColor = UIColor.blue
        print("El usuario escribió: \(myText.text)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear")
        theLabel.text = "La fecha es \(Date())"
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View Did Disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Will Disappear")
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let texto = myText.text
        print ("El usuario escribio: \(texto!)")
        theLabel?.text = texto
        theLabel.backgroundColor = UIColor.lightGray
        view.backgroundColor = UIColor.red
    }
    
    
    
}


//
//  ViewController.swift
//  botonesRGB
//
//  Created by iOS on 9/4/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("APARECE LA PANTALLA DE LOS BOTONES")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("**DES**APARECE LA PANTALLA DE LOS BOTONES")
    }
    
    @IBAction func greenTapped(_ sender: UIButton) {
        
        //instancio la pantalla a la que quiero ir
        //el id que tengo que usar se define en el storyboard (en mi nuevo ViewController) como storyboardId
        //le pongo ! porque ya se que existen storyboards
        var nextScreen = storyboard!.instantiateViewController(withIdentifier: "GreenViewController")
        
        //presento la nueva pantalla
        //indicamos cual es la pantalla a presentar, si tiene animacion y el ultimo parametro lo dejamos en nil por ahora
        present(nextScreen, animated: true, completion: nil)
    
    }
    
}


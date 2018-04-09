//
//  GreenViewController.swift
//  botonesRGB
//
//  Created by iOS on 9/4/18.
//  Copyright © 2018 Acn. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("APARECE LA PANTALLA VERDE")
        // Do any additional setup after loading the view.
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("**DES**APARECE LA PANTALLA VERDE")
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
    @IBAction func goBack(_ sender: Any) {
        //desaparezco pantalla actual
        dismiss(animated: true, completion: nil)
    }
    
}

//
//  ViewController.swift
//  newScreen
//
//  Created by iOS on 26/3/18.
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
    
    @IBOutlet weak var redSliderOutlet: UISlider!
    
    @IBOutlet weak var greenSliderOutlet: UISlider!
    
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    
//    @IBAction func RedSlider(_ sender: Any) {
//        view.backgroundColor = UIColor.init(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
//    }
//
//    @IBAction func greenSlider(_ sender: Any) {
//        view.backgroundColor = UIColor.init(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
//    }
//
//    @IBAction func blueSlider(_ sender: Any) {
//        view.backgroundColor = UIColor.init(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
//    }
    
    @IBAction func sliderChangeValue(_ sender: Any) {
        changeColor()
    }
    
    private func changeColor(){
        
        view.backgroundColor = UIColor.init(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1.0)
        
    }
    
}


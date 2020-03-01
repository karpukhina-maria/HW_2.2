//
//  ViewController.swift
//  HW_2.2
//
//  Created by Mary Jane on 27.02.2020.
//  Copyright © 2020 Maria Karpukhina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var rgbView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
//      Sliders
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0
        redSlider.minimumTrackTintColor = .red
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0
        blueSlider.minimumTrackTintColor = .blue
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0
        greenSlider.minimumTrackTintColor = .green

//      View
        rgbView.layer.cornerRadius = 10
        rgbView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: CGFloat(1.0))
        
        
        
    }
    
    @IBAction func redSliderAction() {
        redValue.text = String(format:"%.2f", redSlider.value)
        changeViewBackground()
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(format:"%.2f", greenSlider.value)
        changeViewBackground()
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(format:"%.2f", blueSlider.value)
        changeViewBackground()
    }
    
    func changeViewBackground() {
        rgbView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: CGFloat(1.0))

    }
}


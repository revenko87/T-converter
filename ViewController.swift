//
//  ViewController.swift
//  T-Converter
//
//  Created by Александр Ревенко on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
    
    didSet {
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.value = 0
        
    }
    }

    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius) 🌡 C"
        let farenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(farenheitTemperature) F"
        
        
        
    }
}


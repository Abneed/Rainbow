//
//  ViewController.swift
//  Rainbow
//
//  Created by Guillermo Abneed Rodriguez Velazquez on 4/3/19.
//  Copyright © 2019 Guillermo Abneed Rodriguez Velazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewDisplayColor: UIView!
    @IBOutlet weak var txtColorHexField: UITextField!
    @IBOutlet weak var sliderRedColor: UISlider!
    @IBOutlet weak var sliderGreenColor: UISlider!
    @IBOutlet weak var sliderBlueColor: UISlider!
    @IBOutlet weak var switchColorByTextField: UISwitch!
    @IBOutlet weak var btnPaintDisplay: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintDisplayColor()
    }
    
    @IBAction func sliderRedChangedValue(_ sender: Any) {
        paintDisplayColor()
    }
    
    @IBAction func sliderGreenChangedValue(_ sender: Any) {
        paintDisplayColor()
    }
    
    @IBAction func sliderBlueChangedValue(_ sender: Any) {
        paintDisplayColor()
    }
    
    private func paintDisplayColor() {
        let red = sliderRedColor.value
        let green = sliderGreenColor.value
        let blue = sliderBlueColor.value
        viewDisplayColor.backgroundColor = UIColor(Int(red), Int(green), Int(blue));
    }
    
    @IBAction func switchValueChanged(_ sender: Any) {
        txtColorHexField.isEnabled = !txtColorHexField.isEnabled
        sliderRedColor.isEnabled = !sliderRedColor.isEnabled
        sliderGreenColor.isEnabled = !sliderGreenColor.isEnabled
        sliderBlueColor.isEnabled = !sliderBlueColor.isEnabled
        btnPaintDisplay.isEnabled = !btnPaintDisplay.isEnabled
    }
    
    @IBAction func btnPaintDisplay(_ sender: Any) {
        var hexValue = txtColorHexField.text!
        hexValue.remove(at: hexValue.startIndex)
        viewDisplayColor.backgroundColor = UIColor(hexValue);
    }
}


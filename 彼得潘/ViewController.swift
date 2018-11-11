//
//  ViewController.swift
//  彼得潘
//
//  Created by HueiDerHuang on 2018/11/11.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var cornerLabel: UILabel!
    
    
    @IBOutlet weak var redSliderValue: UISlider!
    @IBOutlet weak var greenSliderValue: UISlider!
    @IBOutlet weak var blueSliderValue: UISlider!
    @IBOutlet weak var alphaSliderValue: UISlider!
    @IBOutlet weak var cornerSliderValue: UISlider!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func redSliderChanged(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSliderValue.value), green: CGFloat(greenSliderValue.value), blue: CGFloat(blueSliderValue.value), alpha: CGFloat(alphaSliderValue.value))
        redLabel.text = String(Int(redSliderValue.value*255))
    }
    
    @IBAction func greenSliderChanged(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSliderValue.value), green: CGFloat(greenSliderValue.value), blue: CGFloat(blueSliderValue.value), alpha: CGFloat(alphaSliderValue.value))
        greenLabel.text = String(Int(greenSliderValue.value*255))
    }
    
    @IBAction func blueSliderChanged(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSliderValue.value), green: CGFloat(greenSliderValue.value), blue: CGFloat(blueSliderValue.value), alpha: CGFloat(alphaSliderValue.value))
        blueLabel.text = String(Int(blueSliderValue.value*255))
    }
    
    @IBAction func alphaSliderChanged(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSliderValue.value), green: CGFloat(greenSliderValue.value), blue: CGFloat(blueSliderValue.value), alpha: CGFloat(alphaSliderValue.value))
        alphaLabel.text = String(format: "%.2f", alphaSliderValue.value)
    }
    
    @IBAction func cornerSliderChanged(_ sender: Any) {
        imageView.layer.cornerRadius = CGFloat(cornerSliderValue.value)
        cornerLabel.text = String(Int(cornerSliderValue.value))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redLabel.text = String(Int(redSliderValue.value*255))
        greenLabel.text = String(Int(greenSliderValue.value*255))
        blueLabel.text = String(Int(blueSliderValue.value*255))
        alphaLabel.text = String(format: "%.2f", alphaSliderValue.value)
        cornerLabel.text = String(Int(cornerSliderValue.value))
        
    }


}


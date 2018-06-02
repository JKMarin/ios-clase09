//
//  ViewController.swift
//  ejemplos
//
//  Created by Estudiantes on 2/6/18.
//  Copyright © 2018 Juan Carlos Marin. All rights reserved.
//

import UIKit

class ViewSliderController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labeldate: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var imagenLogo: UIImageView!
    @IBOutlet weak var labelStep: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setLabelText(_ texto:String){
        label.text = texto

    }
    @IBAction func sliderChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        setLabelText(String(currentValue))
        
    }
    @IBAction func daepickerChange(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: sender.date)
        labeldate.text = strDate
    }
    @IBAction func alertaPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Dialogo", message:
            "Trabajo en Clase 09", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Realizado", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func rotarPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 2.0, animations: {
            self.imagenLogo.transform = CGAffineTransform(rotationAngle: (180.0 * .pi) / 180.0)
        })
    }
   
    @IBAction func stepChange(_ sender: UIStepper) {
        labelStep.text = Int(sender.value).description
    }
    

}


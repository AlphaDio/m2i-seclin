//
//  FormViewController.swift
//  Places
//
//  Created by Ludovic Ollagnier on 11/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var noteSlider: UISlider!
    @IBOutlet weak var noteLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveForm(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func cancel(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func noteSliderValueChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        noteLabel.text = "\(value)/5"
        sender.setValue(Float(value), animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

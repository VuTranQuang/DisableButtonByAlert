//
//  ViewController.swift
//  ErrorLabel
//
//  Created by Vu on 6/4/19.
//  Copyright © 2019 Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var ageText: UITextField!
    
    @IBOutlet weak var addressText: UITextField!
    
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       nameLabel.isHidden = true
         ageLabel.isHidden = true
        addressLabel.isHidden = true
        phoneLabel.isHidden = true
    }
//    func setTitleForLabelWhenTextFieldNil() {
//        if nameText.text == "" {
//            nameLabel.isHidden = false
//            nameLabel.text = "Bạn chưa nhập dữ liệu"
//            nameLabel.textColor = UIColor.red
//
//        } else {
//            nameLabel.isHidden = true
//        }
//        if ageText.text == "" {
//            ageLabel.isHidden = false
//            ageLabel.text = "Bạn chưa nhập dữ liệu"
//             ageLabel.textColor = UIColor.red
//
//        } else {
//            ageLabel.isHidden = true
//        }
//        if addressText.text == "" {
//            addressLabel.isHidden = false
//            addressLabel.text = "Bạn chưa nhập dữ liệu"
//             addressLabel.textColor = UIColor.red
//
//        } else {
//            addressLabel.isHidden = true
//        }
//        if phoneText.text == "" {
//            phoneLabel.isHidden = false
//            phoneLabel.text = "Bạn chưa nhập dữ liệu"
//             phoneLabel.textColor = UIColor.red
//
//        } else {
//            phoneLabel.isHidden = true
//        }
//    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if  nameText.text == "" {
            showAlert()
            
        }
        if  ageText.text == "" {
            showAlert()
        }
        if  addressText.text == "" {
            showAlert()
        }
        if  phoneText.text == "" {
            showAlert()
        }
        return true
    }
//
    func showAlert() {
        let alert = UIAlertController(title: "Thông báo", message: "Còn mục bạn chưa điền", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onClickSave(_ sender: UIButton) {
//        setTitleForLabelWhenTextFieldNil()
        if nameText.text == "" {
            nameLabel.isHidden = false
            nameLabel.text = "Bạn chưa nhập dữ liệu"
            nameLabel.textColor = UIColor.red

            
        } else {
            nameLabel.isHidden = true
        }
        if ageText.text == "" {
            ageLabel.isHidden = false
            ageLabel.text = "Bạn chưa nhập dữ liệu"
            ageLabel.textColor = UIColor.red
      
            
        } else {
            ageLabel.isHidden = true
        }
        if addressText.text == "" {
            addressLabel.isHidden = false
            addressLabel.text = "Bạn chưa nhập dữ liệu"
            addressLabel.textColor = UIColor.red
        } else {
            addressLabel.isHidden = true
        }
        if phoneText.text == "" {
            phoneLabel.isHidden = false
            phoneLabel.text = "Bạn chưa nhập dữ liệu"
            phoneLabel.textColor = UIColor.red
            
        } else {
            phoneLabel.isHidden = true
        }
}

}

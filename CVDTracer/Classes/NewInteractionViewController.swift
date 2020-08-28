//
//  NewInteractionViewController.swift
//  CVDTracer
//
//  Created by Segundo Fariña on 26/08/2020.
//

import UIKit
import AndesUI

public class NewInteractionViewController: UIViewController {

    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var dateTextField: AndesTextField!
    @IBOutlet weak var locationTextField: AndesTextField!
    @IBOutlet weak var participantsTextField: AndesTextField!
    
    let datePicker = UIDatePicker()
    
    public override func loadView() {
        let bundle = Bundle(for: type(of: self))
        let className = type(of: self).description().components(separatedBy: ".").last
        
        if let nibName = className, let nib = bundle.loadNibNamed(nibName, owner: self), let nibView = nib.first as? UIView {
            self.view = nibView
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.isUserInteractionEnabled = true
        self.view.backgroundColor = AndesStyleSheetManager.styleSheet.bgColorPrimary
        self.setUpDatePicker()
        self.setUpTextFields()
        
        let gestureRecongizer = UITapGestureRecognizer(target: self, action: #selector(doneDatePicker))
        gestureRecongizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(gestureRecongizer)
      
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch?.view != datePicker || touch?.view != dateTextField {
            cancelDatePicker()
        }
    }
    
    private func setUpTextFields () {
        headerTitle.textColor = AndesStyleSheetManager.styleSheet.textColorPrimary
        headerTitle.font = AndesStyleSheetManager.styleSheet.semiboldSystemFontOfSize(size: 24)
        
        subtitle.textColor = AndesStyleSheetManager.styleSheet.textColorPrimary
        subtitle.font = AndesStyleSheetManager.styleSheet.regularSystemFont(size: 16)
        
        subtitle.text = "Te recomendamos realizar un test en cuanto sientas algun sintoma."
        
        dateTextField.label = "Fecha"
        dateTextField.leftContent = AndesTextFieldComponentIcon(andesIconName: "andes_otros_almanaque_20", tintColor: AndesStyleSheetManager.styleSheet.accentColor600)
        
        locationTextField.label = "Lugar"
        locationTextField.placeholder = "¿Con quien te juntaste?"
        locationTextField.leftContent = AndesTextFieldComponentIcon(andesIconName: "andes_control_y_accion_buscar_20", tintColor: AndesStyleSheetManager.styleSheet.accentColor600)
        
        participantsTextField.label = "Participantes"
        participantsTextField.placeholder = "Agregar un participante"
        participantsTextField.leftContent = AndesTextFieldComponentIcon(andesIconName: "andes_control_y_accion_buscar_20", tintColor: AndesStyleSheetManager.styleSheet.accentColor600)
    }
    
    
  


     func setUpDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date

        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneDatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)

//        dateTextField.inputAccessoryView = toolbar
        datePicker.addTarget(self, action: #selector(doneDatePicker), for: .valueChanged)
        dateTextField.inputView = datePicker

    }

     @objc func doneDatePicker(){

        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        dateTextField.text = formatter.string(from: datePicker.date)
        self.datePicker.resignFirstResponder()
//            self.view.endEditing(true)
    }

    @objc func cancelDatePicker(){
        print("Cancel")
       self.view.endEditing(true)
     }
}

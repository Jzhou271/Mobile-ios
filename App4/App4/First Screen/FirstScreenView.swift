//
//  FirstScreenView.swift
//  App4
//
//  Created by Ivy Zhou on 9/29/23.
//

import UIKit

class FirstScreenView: UIView {

    var labelAppName: UILabel!
    var textFieldMessage: UITextField!
    var labelMood: UILabel!
    var pickerMood: UIPickerView!
    var buttonSubmit: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //MARK: set the background color...
        self.backgroundColor = .white
        
        //MARK: initializing the UI elements and constraints...
        
        setupLabelAppName()
        setupTextFieldMessage()
        setupLabelMood()
        setupPickerMood()
        setupButtonSubmit()
        
        initConstraints()
    }
    
    //MARK: initializing the UI elements...
    func setupLabelAppName(){
        labelAppName = UILabel()
        labelAppName.text = "App4"
        labelAppName.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelAppName)
    }
    func setupTextFieldMessage(){
        textFieldMessage = UITextField()
        textFieldMessage.placeholder = "Put some text..."
        textFieldMessage.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textFieldMessage)
    }
    func setupLabelMood(){
        labelMood = UILabel()
        labelMood.text = "How are you feeling today?"
        labelMood.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelMood)
    }
    func setupPickerMood(){
        pickerMood = UIPickerView()
        pickerMood.isUserInteractionEnabled = true
        pickerMood.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(pickerMood)
    }
    func setupButtonSubmit(){
        buttonSubmit = UIButton(type: .system)
        buttonSubmit.setTitle("Submit", for: .normal)
        buttonSubmit.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonSubmit)
    }
    
    //MARK: initializing constraints...
    func initConstraints(){
        NSLayoutConstraint.activate([
            labelAppName.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelAppName.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            textFieldMessage.topAnchor.constraint(equalTo: labelAppName.bottomAnchor, constant: 16),
            textFieldMessage.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            labelMood.topAnchor.constraint(equalTo: textFieldMessage.bottomAnchor, constant: 16),
            labelMood.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            pickerMood.topAnchor.constraint(equalTo: labelMood.bottomAnchor, constant: 16),
            pickerMood.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            buttonSubmit.topAnchor.constraint(equalTo: pickerMood.bottomAnchor, constant: 16),
            buttonSubmit.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


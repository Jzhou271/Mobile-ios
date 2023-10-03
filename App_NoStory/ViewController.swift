//
//  ViewController.swift
//  App_NoStory
//
//  Created by Ivy Zhou on 9/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: declaring the UI elements...
    var labelHello:UILabel! //"Hello World!" Label...
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: call methods to setup the attributes of UI elements...
        setupLabelHello()
        
        //MARK: initializing the constraints...
        initConstraints()
    }
    
    //Defining the Label attributes...
    func setupLabelHello(){
        labelHello = UILabel()
        labelHello.text = "Hello World!"
        labelHello.font = UIFont.systemFont(ofSize: 24)
        labelHello.textColor = .systemBlue
        labelHello.textAlignment = .center
        labelHello.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelHello)
    }
    
    //Initializing the constraints...
    func initConstraints(){
        NSLayoutConstraint.activate(
            [
                //Constraints for labelHello....
                labelHello.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
                labelHello.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            ]
        )
    }

}


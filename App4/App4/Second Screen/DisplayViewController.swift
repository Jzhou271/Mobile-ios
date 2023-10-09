//
//  DisplayViewController.swift
//  App4
//
//  Created by Ivy Zhou on 9/29/23.
//

import UIKit

class DisplayViewController: UIViewController {

    //MARK: creating instance of DisplayView...
    let displayScreen = DisplayView()
    
    //MARK: patch the view of the controller to the DisplayView...
    override func loadView() {
        view = displayScreen
    }
    
    //MARK: message and mood from the first screen...
    var receivedPackage: ViewController.Package = ViewController.Package() // The first screen can set this variable...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: setting the Labels' texts...
        if let unwrappedMessage = receivedPackage.message{
            if !unwrappedMessage.isEmpty{
                displayScreen.labelMessage.text = "Your message: \(unwrappedMessage)"
            }
        }
        
        if let unwrappedMood = receivedPackage.mood{
            if !unwrappedMood.isEmpty{
                displayScreen.labelMood.text = "You are feeling \(unwrappedMood)"
            }
        }
    }

}

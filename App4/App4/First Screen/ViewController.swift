//
//  ViewController.swift
//  App4
//
//  Created by Ivy Zhou on 9/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: initializing the First Screen View...
    let firstScreen = FirstScreenView()
    
    //moods for firstScreen.pickerMood...
    let moods: [String] = ["Happy", "Meh", "Sad"]
    
    var selectedMood = "Happy"
    
    //MARK: struct to create a package to send to the Display Screen...
    public struct Package {
        var message:String?
        var mood:String?
        
        init(message: String? = nil, mood: String? = nil) {
            self.message = message
            self.mood = mood
        }
    }
    
    //MARK: add the view to this controller while the view is loading...
    override func loadView() {
        view = firstScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: adding the PickerView delegate and data source...
        firstScreen.pickerMood.delegate = self
        firstScreen.pickerMood.dataSource = self
        
        //MARK: adding action for firstScreen.
        firstScreen.buttonSubmit.addTarget(self, action: #selector(onButtonSubmitTapped), for: .touchUpInside)
        
    }
    
    
    //MARK: submit button tapped action...
    @objc func onButtonSubmitTapped(){
        let message = firstScreen.textFieldMessage.text
        if let unwrappedMessage = message{
            //if the message is not empty...
            if !unwrappedMessage.isEmpty{
                // creating a package to send to Display...
                let package = Package(message: unwrappedMessage, mood: selectedMood)
                
                //instantiating displayViewController...
                let displayViewController = DisplayViewController()
                
                //setting the to be sent package...
                displayViewController.receivedPackage = package
                
                //pushing displayController to navigation controller...
                navigationController?.pushViewController(displayViewController, animated: true)
            }else{
                //do your thing!
            }
        }
    }

}


//MARK: implementing mood PickerView...
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    //returns the number of columns/components in the Picker View...
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //returns the number of rows in the current component...
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moods.count
    }
    
    //set the title of currently picked row...
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // on change selection, update selectedMood...
        selectedMood = moods[row]
        return moods[row]
    }
    
    
}

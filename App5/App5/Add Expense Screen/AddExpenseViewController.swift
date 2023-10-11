//
//  AddExpenseViewController.swift
//  App5
//
//  Created by Ivy Zhou on 10/3/23.
//

import UIKit

class AddExpenseViewController: UIViewController {
    
    var selectedType = "Groceries"
    var delegate:ViewController!
    
    let addExpenseScreen = AddExpenseView()
    
    override func loadView() {
        view = addExpenseScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addExpenseScreen.pickerType.dataSource = self
        addExpenseScreen.pickerType.delegate = self

        addExpenseScreen.buttonAdd.addTarget(self, action: #selector(onAddButtonTapped), for: .touchUpInside)
    }
    
    @objc func onAddButtonTapped(){
        var title:String?
        if let titleText = addExpenseScreen.textFieldTitle.text{
            if !titleText.isEmpty{
                title = titleText
            }else{
                //do your thing to alert user...
                return
            }
        }
        
        var amount = 0.0
        if let amountText = addExpenseScreen.textFieldAmount.text{
            if !amountText.isEmpty{
                if let optionalAmount = Double(amountText){
                    amount = optionalAmount
                }else{
                    //alert the user that it's not a valid input...
                    return
                }
                
                
            }else{
                //do your thing to alert the user...
                return
            }
        }
        
        let newExpense = Expense(title: title, amount: amount, type: selectedType)
        delegate.delegateOnAddExpense(expense: newExpense)
        navigationController?.popViewController(animated: true)
    }
}

extension AddExpenseViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //MARK: we are using only one section...
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //MARK: we are displaying the options from Utilities.types...
        return Utilities.types.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //MARK: updating the selected type when the user picks this row...
        selectedType = Utilities.types[row]
        return Utilities.types[row]
    }
}

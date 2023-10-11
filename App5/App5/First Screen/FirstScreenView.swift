//
//  FirstScreenView.swift
//  App5
//
//  Created by Ivy Zhou on 10/3/23.
//

import UIKit

class FirstScreenView: UIView {
    
    var tableViewExpense: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white

        setupTableViewExpense()
        initConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTableViewExpense(){
        tableViewExpense = UITableView()
        tableViewExpense.register(TableViewExpenseCell.self, forCellReuseIdentifier: "expenses")
        tableViewExpense.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableViewExpense)
    }
    
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            tableViewExpense.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 8),
            tableViewExpense.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            tableViewExpense.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            tableViewExpense.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -8),
        ])
    }


}

//
//  DisplayView.swift
//  App4
//
//  Created by Ivy Zhou on 9/29/23.
//

import UIKit

class DisplayView: UIView {

    var labelMessage: UILabel!
    var labelMood: UILabel!
    
    //MARK: View initializer...
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //setting the background color...
        self.backgroundColor = .white
        
        setupLabelMessage()
        setupLabelMood()
        
        initConstraints()
    }
    
    //MARK: initializing the UI elements...
    func setupLabelMessage(){
        labelMessage = UILabel()
        labelMessage.textAlignment = .left
        labelMessage.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelMessage)
    }
    func setupLabelMood(){
        labelMood = UILabel()
        labelMood.textAlignment = .left
        labelMood.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(labelMood)
    }
    
    //MARK: initializing the constraints...
    func initConstraints(){
        NSLayoutConstraint.activate([
            labelMessage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelMessage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            labelMood.topAnchor.constraint(equalTo: labelMessage.bottomAnchor, constant: 16),
            labelMood.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

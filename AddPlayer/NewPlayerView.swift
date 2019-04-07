//
//  newPlayerView.swift
//  AddPlayer
//
//  Created by mac on 3/29/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class NewPlayerView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var addPlayerTextField = UITextField()
    var deleteButton = UIButton()
    var stackView = UIStackView()
    
    init() {
        super.init(frame: .zero)
        self.addPlayerTextField.placeholder = "Joueur"
        self.addPlayerTextField.borderStyle = .line
        self.deleteButton.setImage(UIImage(named: "trash"), for: .normal)
        self.deleteButton.addTarget(self, action: #selector(deletePlayer(_:)), for: .touchUpInside)
    
        
        stackView = UIStackView(arrangedSubviews:[addPlayerTextField,deleteButton])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 10),
            ])
    }
    
    @objc func deletePlayer(_ sender:UIButton!){
        print("delete")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

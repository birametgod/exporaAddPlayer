//
//  ViewController.swift
//  AddPlayer
//
//  Created by mac on 3/29/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var stackView : UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let addPlayerOneTextField = UITextField()
        addPlayerOneTextField.placeholder = "Joueur 1"
        addPlayerOneTextField.borderStyle = .line
        let addPlayerTwoTextField  = UITextField()
        addPlayerTwoTextField.placeholder = "Joueur 2"
        addPlayerTwoTextField.borderStyle = .line
        
        let startGameButton = UIButton()
        startGameButton.translatesAutoresizingMaskIntoConstraints = false
        startGameButton.setTitle("C'EST PARTI!", for: .normal)
        startGameButton.setTitleColor(UIColor.black, for: .normal)
        startGameButton.layer.borderColor = UIColor.blue.cgColor
        startGameButton.layer.borderWidth = 4
        startGameButton.layer.cornerRadius = 5

        stackView = UIStackView(arrangedSubviews: [addPlayerOneTextField, addPlayerTwoTextField])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(stackView)
                view.addSubview(startGameButton)
        
        let barButton = UIBarButtonItem(image: UIImage(named: "plus"),  style: .plain, target: self, action: #selector(ViewController.addPlayer(_:)))
        self.navigationItem.rightBarButtonItem = barButton
        
        
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startGameButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            startGameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startGameButton.heightAnchor.constraint(equalToConstant: 50),
            startGameButton.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    @objc func addPlayer(_ sender:UIBarButtonItem!){
        stackView.addArrangedSubview(NewPlayerView.init())
    }
}


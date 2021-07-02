//
//  ViewController.swift
//  TicTacToe
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let bgimage: UIImageView = {
        let bgimage = UIImageView()
        bgimage.image = UIImage(named: "bg1.jpg")
        return bgimage
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Tic Tac Toe"
        label.font = label.font.withSize(40)
        label.textAlignment = .center
        return label
    }()
    
    
    private let myTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Name"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        textField.layer.cornerRadius = 25
        return textField
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Start Game", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        return button
    }()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(bgimage)
        view.addSubview(myLabel)
        view.addSubview(myTextField)
        view.addSubview(myButton)

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bgimage.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width:400, height: 660)
        myLabel.frame = CGRect(x: 20, y: view.height/2-120, width :view.width - 40, height: 40)
        myTextField.frame = CGRect(x: 50, y:view.height/2+10, width: view.width - 80, height: 50)
        myButton.frame = CGRect(x: 50, y:view.height/2+80, width: view.width - 80, height: 50)


}
    
    @objc func handleButtonClick() {
        print("Clicked!")
        
        let vc = TicTacToeVC()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

//
//  game.swift
//  TicTacToe
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class gameVC: UIViewController {
    
    private let bgimage: UIImageView = {
        let bgimage = UIImageView()
        bgimage.image = UIImage(named: "bg5.jpg")
        return bgimage
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
         view.addSubview(bgimage)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bgimage.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width:400, height: 660)

}
}

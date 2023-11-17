//
//  ViewController.swift
//  ProtocolsCodable
//
//  Created by Alysson Menezes on 17/11/23.
//

import UIKit

class HomeVC: UIViewController {
    
    private var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


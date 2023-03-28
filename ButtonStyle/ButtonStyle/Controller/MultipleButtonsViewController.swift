//
//  MultipleButtonsViewController.swift
//  ButtonStyle
//
//  Created by Guillaume on 26/03/2023.
//

import UIKit

class MultipleButtonsViewController: UIViewController {

    @IBOutlet weak var button01: UIButton!
    
    @IBOutlet weak var button02: UIButton!
    
    @IBOutlet weak var button03: UIButton!
    
    @IBOutlet weak var button04: UIButton!
    
    @IBOutlet weak var button05: UIButton!
    
    @IBOutlet weak var button06: UIButton!
    
    @IBOutlet weak var button07: UIButton!
    
    @IBOutlet weak var button08: UIButton!
    
    @IBOutlet weak var button09: UIButton!
    
    @IBOutlet weak var button10: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        setupButtons()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        print(sender.tag)
    }
    
    private func setupButtons() {
        //Button01
        button01.layer.cornerRadius = 40 // Moitié de la hauteur pour obtenir un cercle
    }
    
}

//
//  ButtonsViewController.swift
//  ButtonStyle
//
//  Created by Guillaume on 26/03/2023.
//

import UIKit

class ButtonsViewController: UIViewController {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var positionsX:[CGFloat] = []
    var positionsY:[CGFloat] = []
    var position:Position = .topLeft
    
    
    
    @IBOutlet weak var button01: UIButton!
    
    @IBOutlet weak var button01Width: NSLayoutConstraint!
    @IBOutlet weak var button01Height: NSLayoutConstraint!
    
    @IBOutlet weak var positionButton01X: NSLayoutConstraint!
    @IBOutlet weak var positionButton01Y: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDimensions()
        setupButtons()
        moveButton()
    }
    
    @IBAction func button01Push(_ sender: UIButton) {
        moveButton()
    }
    
    private func setupDimensions() {
        positionsX = [0, screenWidth - button01Width.constant]
        positionsY = [0, screenHeight - (button01Height.constant*2)]
    }
    
    private func setupButtons() {
        //Button01
        
        button01.backgroundColor = .darkGray
        button01.layer.cornerRadius = 10
    }
    
    private func moveButton() {
        switch position {
                
            case .topLeft:
                positionButton01X.constant = positionsX[0]
                positionButton01Y.constant = positionsY[0]
                position = .topRight
                
            case .topRight:
                positionButton01X.constant = positionsX[0]
                positionButton01Y.constant = positionsY[1]
                position = .bottomLeft
                
            case .bottomLeft:
                positionButton01X.constant = positionsX[1]
                positionButton01Y.constant = positionsY[0]
                position = .bottomRight
                
            case .bottomRight:
                positionButton01X.constant = positionsX[1]
                positionButton01Y.constant = positionsY[1]
                position = .topLeft
        }
    }
    
}

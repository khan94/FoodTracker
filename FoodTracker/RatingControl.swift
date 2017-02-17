//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Khan Julmagambetov on 2017-02-16.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    // MARK: Itialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    func ratingButonTapped(button: UIButton){
        print("Button pressed 👍")
    }

    // MARK: Private Methods
    private func setupButtons(){
        
        // Create buttons
        let button = UIButton()
        button.backgroundColor = UIColor.green
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        // Setup the button action
        button.addTarget(self, action:
            #selector(RatingControl.ratingButonTapped(button:)), for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
    }
}

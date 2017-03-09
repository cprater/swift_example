//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Christopher Prater on 3/8/17.
//
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    //MARK: Properties
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    @IBInspectable var starCount: Int = 5
    
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    override init(arrangedSubviews: [UIView]) {
        super.init(arrangedSubviews: arrangedSubviews)
        setupButtons()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed ")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        for _ in 0..<starCount {
            // Create button
            let button = UIButton()
            button.backgroundColor = UIColor.redColor()
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraintEqualToConstant(starSize.height).active = true
            button.widthAnchor.constraintEqualToConstant(starSize.width).active = true
            
            // Setup button action
            button.addTarget(self,
                             action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchUpInside)
            
            // Add button to stack
            addArrangedSubview(button)
            
            // Add button to array
            ratingButtons.append(button)
        }
    }
}

//
//  CardView.swift
//  CardView
//
//  Created by Acxiom Consulting on 30/12/20.
//  Copyright © 2020 Acxiom Consulting. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView : UIView {
    @IBInspectable   var cornerradius  : CGFloat = 5
    @IBInspectable   var offSetWidth   : CGFloat = 5
    @IBInspectable   var offSetHeight  : CGFloat = 5
    @IBInspectable   var offSetShadow  : Float   = 5
    @IBInspectable   var colour        : UIColor = UIColor.systemGray4
    
    override func layoutSubviews() {
        layer.cornerRadius = self.cornerradius
        layer.shadowColor = self.colour.cgColor
        layer.shadowOffset = CGSize(width: self.offSetWidth, height: self.offSetHeight)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornerradius).cgPath
        layer.shadowOpacity = self.offSetShadow
    }
}

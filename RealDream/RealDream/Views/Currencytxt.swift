//
//  Currencytxt.swift
//  RealDream
//
//  Created by ggg on 23.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

@IBDesignable
class Currencytxt: UITextField {
    
    //creating a new item insdide another one (currency symbol):
    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLB = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        
        currencyLB.backgroundColor = #colorLiteral(red: 0.8285532189, green: 0.8285532189, blue: 0.8285532189, alpha: 0.7023547535)
        currencyLB.textAlignment = .center
        currencyLB.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        currencyLB.layer.cornerRadius = 5.0
        currencyLB.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLB.text = formatter.currencySymbol
        
        addSubview(currencyLB)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 0.5895469119, green: 0.5895469119, blue: 0.5895469119, alpha: 0.2477992958)
        textAlignment = .center
        
        layer.cornerRadius = 5.0
        clipsToBounds = true //needs to be used for cornerRadius
        
        //checking for nill when the if let is used:
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
}

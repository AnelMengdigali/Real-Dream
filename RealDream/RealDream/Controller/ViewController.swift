//
//  ViewController.swift
//  RealDream
//
//  Created by ggg on 23.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var wagetxt: Currencytxt!
    @IBOutlet weak var pricetxt: Currencytxt!
    
    @IBOutlet weak var resultLB: UILabel!
    
    @IBOutlet weak var hoursLB: UILabel!
    
    @IBOutlet weak var clearBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let calcBtn = UIButton(frame: CGRect(x: 0, y :0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.448356242, blue: 0.234989039, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
            
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
            
        resultLB.isHidden = true
        hoursLB.isHidden = true
        
        clearBtn.isHidden = true
            
    }
        
    @objc func calculate(){
            
        //if let is used for being sure that assigned variable is not nill:
        if let wagetxt = wagetxt.text, let pricetxt = pricetxt.text {
                
            if let wage = Double(wagetxt), let price = Double(pricetxt) {
                    
                view.endEditing(true)
                    
                resultLB.isHidden = false
                hoursLB.isHidden = false
                
                clearBtn.isHidden = false
                //by "\..." we are getting a string from a number:
                resultLB.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
        
    
    @IBAction func ccPressed(_ sender: Any) {
        
        resultLB.isHidden = true
        hoursLB.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
        
    }
    

}

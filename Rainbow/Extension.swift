//
//  Extension.swift
//  Rainbow
//
//  Created by Guillermo Abneed Rodriguez Velazquez on 4/3/19.
//  Copyright © 2019 Guillermo Abneed Rodriguez Velazquez. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(_ red: Int, _ green: Int, _ blue: Int) {
        self.init(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
    }
    
    convenience init(_ hexColor: String) {
        let regex: NSRegularExpression = try! NSRegularExpression(pattern: "^[a-fA-F0-9]{6}$")
        if regex.matches(hexColor) {
            let arrayString = Array(hexColor)
            let red: Int = NSExpression(format: "0x" + (String(arrayString[0]) + String(arrayString[1]))).expressionValue(with: nil, context: nil) as! Int
            let green: Int = NSExpression(format: "0x" + (String(arrayString[2]) + String(arrayString[3]))).expressionValue(with: nil, context: nil) as! Int
            let blue: Int = NSExpression(format: "0x" + (String(arrayString[4]) + String(arrayString[5]))).expressionValue(with: nil, context: nil) as! Int
            self.init(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
        }
        else {
            self.init(red: CGFloat(0)/255, green: CGFloat(0)/255, blue: CGFloat(0)/255, alpha: 1)
        }
    }
}

extension NSRegularExpression {
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
}

//
//  ViewController.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/25/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pieColors = [UIColor.init(rgb: 0x003f5c),
                         UIColor.init(rgb: 0x58508d),
                         UIColor.init(rgb: 0xbc5090),
                         UIColor.init(rgb: 0xff6361),
                         UIColor.init(rgb: 0xffa600)]
        
        let data: [Double] = [10, 15, 20, 25, 30]
        let centerX = Double(self.view.frame.width / 2)
        let centerY = Double(self.view.frame.height / 2)
 
        let pieChart = PieChartView(radius: 150, x: centerX, y: centerY, data: data, colors: pieColors, lineWidth: 1)
        self.view.addSubview(pieChart)
    }


}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}

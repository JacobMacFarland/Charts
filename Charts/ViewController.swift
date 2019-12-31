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
        
        // let lineChart = LineChartView(x: 150, y: 55, height: 275, width: 675, data: [50, 30, 20, 10])
        let baseGraph = BaseGraphView(x: 150, y: 55, width: 675, height: 275, axesColor: UIColor.init(rgb: 0xE5E5E5).cgColor)
        self.view.addSubview(baseGraph)
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

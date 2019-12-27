//
//  PieChartView.swift
//  Charts
//
//  Created by Jacob MacFarland on 12/25/19.
//  Copyright © 2019 Jacob MacFarland. All rights reserved.
//

import Foundation
import UIKit

class PieChartView: BaseView {
    
    var pieChart = UIView()
    
    /*override init() {
        super.init()
    }*/
    
    public init(radius: Double, backgroundColor: UIColor, x: Double, y: Double) {
        super.init()
        pieChart.frame = CGRect(x: x, y: y, width: radius, height: radius)
        pieChart.backgroundColor = backgroundColor
        pieChart.layer.cornerRadius = CGFloat(radius) / 2
        pieChart.layer.masksToBounds = true
        
        addSubview(pieChart)
    }

   
}

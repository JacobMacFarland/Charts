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
        /*let pieColors = [UIColor.red, UIColor.green, UIColor.gray, UIColor.blue, UIColor.black, UIColor.purple, UIColor.yellow]
        let data: [Double] = [10, 20, 30, 40, 50, 60, 70]
        let centerX = Double(self.view.frame.width / 2)
        let centerY = Double(self.view.frame.height / 2)
        let pie = PieChartView(radius: 100, x: centerX, y: centerY, data: data, colors: pieColors)
        self.view.addSubview(pie)*/
        /*let pieColors = [UIColor.red, UIColor.green, UIColor.gray, UIColor.blue, UIColor.black, UIColor.purple, UIColor.yellow]
        
        for (index, color) in pieColors.enumerated() {
            let piePath = UIBezierPath()
            let center = CGPoint(x: self.view.frame.width / 2, y: self.view.frame.height / 2)
            let startAngle = CGFloat(Double(index) / 7.0 * 360.0).radians()
            let endAngle = CGFloat((Double(index) + 1.0) / 7.0 * 360.0).radians()
            let radius = CGFloat(150)
            
            piePath.move(to: center)
            piePath.addArc(withCenter: center,
                           radius: radius,
                           startAngle: startAngle,
                           endAngle: endAngle,
                           clockwise: true)
            piePath.close()
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = piePath.cgPath
            shapeLayer.strokeColor = UIColor.white.cgColor
            shapeLayer.fillColor = UIColor.orange.cgColor
            shapeLayer.lineWidth = 4
            
            self.view.layer.addSublayer(shapeLayer)
        }*/
        let pieChart = PieChartView(radius: 2)
        self.view.addSubview(pieChart)
    }


}

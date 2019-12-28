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
        //let pie = PieChartView(radius: 200, backgroundColor: UIColor.red, x: 110, y: 300)
        
        let piePath = UIBezierPath()
        let center = CGPoint(x: self.view.frame.width / 2, y: self.view.frame.height / 2)
        let startAngle = CGFloat(180).radians()
        let endAngle = CGFloat(90).radians()
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
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 2
        
        self.view.layer.addSublayer(shapeLayer)

    }


}

extension CGFloat {
    func radians() -> CGFloat {
        let b = CGFloat(Double.pi) * (self/180)
        return b
    }
}


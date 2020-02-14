//
//  ViewController.swift
//  DrawBrick
//
//  Created by User on 2/13/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brickView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.brown
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        brickView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        brickView.center = view.center
        view.addSubview(brickView)
        drawLayer()
    }
    
    func drawLayer(){
        let shapeLayer = CAShapeLayer()
        // kich thuoc squareView
        let L = brickView.frame.size.width
        // a = 1/10L la doan kich thuoc thut vao
        let a = L / 5
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-a , y: a))
        path1.addLine(to: CGPoint(x: a, y: a))
        
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.black.cgColor
        topLayer.opacity = 0.3
        
        brickView.layer.addSublayer(shapeLayer)
        
        let leftLayer = CAShapeLayer()
        let path2 = UIBezierPath()

        path2.move(to: CGPoint(x: 0, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: L))
        path2.addLine(to: CGPoint(x: a, y: L-a))
        path2.addLine(to: CGPoint(x: a, y: a))

        leftLayer.path = path2.cgPath
        shapeLayer.insertSublayer(leftLayer, at: 0)
        leftLayer.fillColor = UIColor.white.cgColor
        leftLayer.opacity = 0.3
        
        let bottomLayer = CAShapeLayer()
        let path3 = UIBezierPath()

        path3.move(to: CGPoint(x: L, y: L))
        path3.addLine(to: CGPoint(x: 0, y: L))
        path3.addLine(to: CGPoint(x: a, y: L-a))
        path3.addLine(to: CGPoint(x: L-a, y: L-a))

        bottomLayer.path = path3.cgPath
        shapeLayer.insertSublayer(bottomLayer, at: 0)
        bottomLayer.fillColor = UIColor.red.cgColor
        bottomLayer.opacity = 0.3
        
        let rightLayer = CAShapeLayer()
        let path4 = UIBezierPath()

        path4.move(to: CGPoint(x: L, y: L))
        path4.addLine(to: CGPoint(x: L, y: 0))
        path4.addLine(to: CGPoint(x: L-a, y: a))
        path4.addLine(to: CGPoint(x: L-a, y: L-a))

        rightLayer.path = path4.cgPath
        shapeLayer.insertSublayer(rightLayer, at: 0)
        rightLayer.fillColor = UIColor.yellow.cgColor
        rightLayer.opacity = 0.3


    }
    


    

}

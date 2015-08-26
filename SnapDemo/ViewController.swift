//
//  ViewController.swift
//  SnapDemo
//
//  Created by 翟涛 on 15/8/26.
//  Copyright (c) 2015年 翟涛. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = getColor(0xFFDEAA);
        
        let view1 = UIView()
        view1.backgroundColor = getColor(0x6FBFAC)
        view.addSubview(view1)
        view1.snp_makeConstraints{(make)->Void in
            make.edges.equalTo(view).insets(UIEdgeInsetsMake(20, 20, 20, 20))
        }
        
        let view2 = UIView()
        let view3 = UIView()
        let view4 = UIView()
        view2.backgroundColor = getColor(0xE5395F)
        view3.backgroundColor = getColor(0x402516)
        view4.backgroundColor = getColor(0xC795FF)
        
        view1.addSubview(view2)
        view1.addSubview(view3)
        view1.addSubview(view4)
        view2.snp_makeConstraints{(make)->Void in
            make.top.equalTo(view1.snp_top).offset(20)
            make.width.equalTo(view3)
            make.left.equalTo(view1.snp_left).offset(20)
            make.right.equalTo(view3.snp_left).offset(-20)
            make.height.equalTo(200)
        }
        
        view3.snp_makeConstraints{(make)->Void in
            make.top.equalTo(view1.snp_top).offset(20)
            make.width.equalTo(view2)
            make.right.equalTo(view1.snp_right).offset(-20)
            make.left.equalTo(view2.snp_right).offset(-20)
            make.height.equalTo(200)
        }
        
        view4.snp_makeConstraints{(make)->Void in
            make.width.equalTo(view1).offset(-40)
            make.centerX.equalTo(view.snp_centerX)
            make.top.equalTo(view2.snp_bottom).offset(20)
            make.bottom.equalTo(view1.snp_bottom).offset(-20)
        }
    }

    func getColor(color:Int32) -> UIColor{
        var red = CGFloat((color&0xff0000)>>16)/255
        var green = CGFloat((color&0xff00)>>8)/255
        var blue = CGFloat(color&0xff)/255
        print("\(red) \n \(green) \n \(blue) \n")
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}


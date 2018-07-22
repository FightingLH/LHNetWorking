//
//  WDTabBarCobtroller.swift
//  WEDAY
//
//  Created by 李欢 on 2018/7/23.
//  Copyright © 2018年 李欢. All rights reserved.
//

import UIKit

class WDTabBarCobtroller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBar.isTranslucent = false
        setupTaggar()
        setChildVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func setupTaggar(){
        let rect = CGRect(x:0,y:0,width:UIScreen.main.bounds.size.width,height:0.5)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(UIColor.red.cgColor)
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.tabBar.shadowImage = image
        self.tabBar.backgroundImage = UIImage()
        // 设置字体偏移
        UITabBarItem.appearance().titlePositionAdjustment = UIOffsetMake(0.0, -5.0)
        
        //tabBar 底部工具栏背景颜色 (以下两个都行)
        //self.tabBar.barTintColor = UIColor.orange
        self.tabBar.backgroundColor = UIColor.white
        
        //设置 tabBar 工具栏字体颜色 (未选中  和  选中)
        
        // 设置图片选中时颜色必须设置（系统默认选中蓝色）
        UITabBar.appearance().tintColor = UIColor.black
        //或者写法都是一样的
        //self.tabBar.tintColor = UIColor.black
    }

    //MARK:添加控制器
    fileprivate func setChildVC(){
        setupOneChildViewController(WDNOTEController(), title: "路演", normalImage: "tab_index_before", selectedImage: "tab_index_after")
        
        setupOneChildViewController(WDATTENTIONController(), title: "问答", normalImage: "tab_active_before", selectedImage: "tab_active_after")
        
        setupOneChildViewController(WDDISCOVERController(), title: "", normalImage: "", selectedImage: "")
        
        setupOneChildViewController(WDMINEController(), title: "投资人", normalImage: "tab_class_before", selectedImage: "tab_class_after")
    }

    fileprivate func setupOneChildViewController(_ vc:UIViewController,title:String, normalImage:String, selectedImage:String){
        
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage(named:normalImage)
        vc.tabBarItem.selectedImage = UIImage(named:selectedImage)
        let baseNav = WDNavigationController(rootViewController:vc)
        addChildViewController(baseNav)
        
    }

}

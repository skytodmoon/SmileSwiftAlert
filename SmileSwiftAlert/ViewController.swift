//
//  ViewController.swift
//  SmileSwiftAlert
//
//  Created by 微笑吧阳光 on 2016/12/8.
//  Copyright © 2016年 yismile.com. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    let SmallImg = SpringView() //背景视图
    let screen_width = UIScreen.main.bounds.size.width
    let screen_height = UIScreen.main.bounds.size.height

    
    var selectedForce: CGFloat = 1
    var selectedDuration: CGFloat = 1
    var selectedDelay: CGFloat = 0
    
    var selectedDamping: CGFloat = 0.7
    var selectedVelocity: CGFloat = 0.7
    var selectedScale: CGFloat = 1
    var selectedX: CGFloat = 0
    var selectedY: CGFloat = 0
    var selectedRotate: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
//        SmallImg.frame = CGRect(x: 0, y: screen_height - 200, width: 80 , height: 80)
//        SmallImg.center.x = screen_width/2;
//        SmallImg.backgroundColor = UIColor.white
//        SmallImg.layer.shadowColor = UIColor.lightGray.cgColor
//        SmallImg.layer.borderColor = UIColor.groupTableViewBackground.cgColor
//        self.view.addSubview(SmallImg)
//   
//        setOptions()
        
    }


    @IBAction func AlertBtnClick(_ sender: UIButton) {
        
        let alertView = SmileAlert(title: "SmileSwiftAlert", message: "Do any additional setup after loading the view, typically from a nib.", cancelButtonTitle: "取 消", sureButtonTitle: "确 定")
        alertView.show()
        //获取点击事件
        alertView.clickIndexClosure { (index) in
            print("点击了第" + "\(index)" + "个按钮")
        }
    }
    

    @IBAction func SheetBtnClick(_ sender: UIButton) {
        
        
        let sheetView = SmileActionSheet(title: "标题", cancelButtonTitle: "取消", buttonTitles: ["选择1", "选择2", "选择3"])
        sheetView.show()
        
        
    }
    
    
    @IBAction func NotificationShowClick(_ sender: UIButton) {
        
        let  notionShow = SmileNotificationShow(title: "哎呀，手机即将要爆炸~", showType:SmileNotificationShowType.SmileNotificationShowTop)
        notionShow .show()
        
        
    }
    
    
    
    
    
    
    
//    func setOptions()  {
//        SmallImg.animation = "FadeInUp"
//        SmallImg.curve = "EaseOutBack"
//        SmallImg.duration = 1.0
//        SmallImg.damping = selectedDamping
//        SmallImg.velocity = selectedVelocity
//        SmallImg.scaleX = 1
//        SmallImg.scaleY = 1
//        SmallImg.x = selectedX
//          SmallImg.force = 2
//        SmallImg.y = 300
//        SmallImg.rotate = selectedRotate
//        
//        SmallImg.animateNext {
//            self.SmallImg.animation = "pop"
//            self.SmallImg.curve = "Spring"
//            self.SmallImg.duration = 1.0
//            self.SmallImg.damping = 0.7
//            self.SmallImg.velocity = 0.7
//            self.SmallImg.force = 0.3
//             self.SmallImg.animate()
//        }
//
//    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}


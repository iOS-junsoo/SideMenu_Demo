//
//  CustomSideMenuNavigation.swift
//  SideMenu_Demo
//
//  Created by 준수김 on 2021/10/11.
//

import UIKit
import SideMenu

class CustomSideMenuNavigation: SideMenuNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presentationStyle = .menuSlideIn //나오는 스타일
        
        self.menuWidth = self.view.frame.width * 0.5 //가로길이 50%설정
        
        self.leftSide = true //왼쪽에서 나오도록 만들기
        
        self.statusBarEndAlpha = 0.0 //상태바 보이게 만들기
        
        //보여지는 속도
        self.presentDuration = 1.0
        //사라지는 속도
        self.dismissDuration = 1.0
    }
    
}

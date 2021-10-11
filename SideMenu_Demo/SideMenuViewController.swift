//
//  SideMenuViewController.swift
//  SideMenu_Demo
//
//  Created by 준수김 on 2021/10/11.
//

import UIKit

class SideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
            print("\(sender.currentTitle!) 클릭됨.")
            
            // 사이드메뉴 닫기
            dismiss(animated: true, completion: nil)
        }

}


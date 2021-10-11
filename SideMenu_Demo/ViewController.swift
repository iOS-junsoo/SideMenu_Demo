//
//  ViewController.swift
//  SideMenu_Demo
//
//  Created by 준수김 on 2021/10/11.
//

import UIKit
import SideMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        //스토리보드
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //사이드메뉴 뷰컨트롤러 객체 생성
        let sideMenuViewController: SideMenuViewController = storyboard.instantiateViewController(withIdentifier: "SideMenuViewController") as! SideMenuViewController
        
        //커스텀 네비게이션이랑 사이드메뉴 뷰컨트롤러 연결
        let menu = CustomSideMenuNavigation(rootViewController: sideMenuViewController)
        
        //보여주기
        present(menu, animated: true, completion: nil)
    }
    

}

extension ViewController: SideMenuNavigationControllerDelegate {
    
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Appearing! (animated: \(animated))")
    }

    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Appeared! (animated: \(animated))")
    }

    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappearing! (animated: \(animated))")
    }

    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappeared! (animated: \(animated))")
    }

}

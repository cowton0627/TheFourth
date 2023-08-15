//
//  ViewController.swift
//  TheFourth
//
//  Created by Chun-Li Cheng on 2021/11/21.
//

import UIKit

class ViewController: UIViewController {

    deinit {
        print("ViewController deinit <===")
    }
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        print("===> ViewController init")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("===> ViewController'view did load.")

        self.view.backgroundColor = .yellow
        self.title = "首頁"
        self.navigationController?.navigationBar.backgroundColor = .lightGray
        self.navigationController?.navigationBar.isTranslucent = false
        
        let leftBtn = UIBarButtonItem(
            image: UIImage(systemName: "pencil"),
            style: .plain,
            target: self,
            action: #selector(doSomeTh))
        self.navigationItem.leftBarButtonItem = leftBtn
        
        let rightBtn = UIBarButtonItem(
            title: "設定",
            style: .plain,
            target: self,
            action: #selector(toSetting))
        self.navigationItem.rightBarButtonItem = rightBtn
        
        let screenSize = UIScreen.main.bounds
        let myBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        myBtn.center = CGPoint(x: screenSize.width/2, y: 250)
        myBtn.layer.cornerRadius = 20
        myBtn.setTitle("Article", for: .normal)
        myBtn.backgroundColor = .systemBlue
        myBtn.addTarget(self, action: #selector(toAirticle), for: .touchUpInside)
        self.view.addSubview(myBtn)
    }

    @objc func doSomeTh() {
        print("Hello World!")
    }
    
    @objc func toSetting() {
        self.navigationController?.pushViewController(SettingViewController(),
                                                      animated: true)
    }
    
    @objc func toAirticle() {
        self.navigationController?.pushViewController(AirticleViewController(),
                                                      animated: true)
    }

}


//
//  DebugViewController.swift
//  Common
//
//  Created by 林水竹 on 2/3/2019.
//  Copyright © 2019 shuizhulin. All rights reserved.
//

import UIKit

class DebugViewController: UIViewController {
    private let centerView: UILabel = UILabel();

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        centerView.center = self.view.center
        centerView.text = "Hello world";
      
        centerView.textColor = .red
        centerView.sizeToFit()

        self.view.backgroundColor = UIColor.white
        self.view.addSubview(centerView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

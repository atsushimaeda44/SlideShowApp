//
//  ResultViewController.swift
//  SlideShowApp
//
//  Created by 前田陸 on 2018/02/12.
//  Copyright © 2018年 前田陸. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var ResultImageLabel: UIImageView!
    var image: UIImage? 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ResultImageLabel.image = image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

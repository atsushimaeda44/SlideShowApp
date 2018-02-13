//
//  ViewController.swift
//  SlideShowApp
//
//  Created by 前田陸 on 2018/02/12.
//  Copyright © 2018年 前田陸. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageLabel: UIImageView!
    //定数の宣言
    var images = [UIImage(named : "IMG_0216.jpg")!, UIImage(named : "IMG_0223.jpg")!,
        UIImage(named : "IMG_0245 2.jpg")!, UIImage(named : "IMG_0524.jpg")!]
    var index = 0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func updateTimer(timer : Timer){
        //selector指定の関数
        self.index += 1
        if index > images.count - 1{
            index = 0
        }
        imageLabel.image = images[index]
    }
   
    @IBOutlet weak var advanceLabel: UIButton!
    
    @IBAction func advanceSlide(_ sender: Any) {
    if timer == nil{
        //進むボタンで次の画面に移行、最後の画像になったら０に戻る
            index += 1
        if index > images.count - 1{
            index = 0
        }
            imageLabel.image = images[index]
            
    }
    }

    @IBOutlet weak var returnLabel: UIButton!
    @IBAction func returnSlide(_ sender: Any) {
    if timer == nil{
        //戻るボタンで前の画面へ、最初の画面になったら3に戻る
            index -= 1
        if index < 0{
            index = 3
        }
            imageLabel.image = images[index]
        }
    }
    
    @IBAction func startreturnSlide(_ sender: Any) {
    if timer == nil{
            //停止中
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            advanceLabel.isEnabled = false
            returnLabel.isEnabled = false
        }else{
            //始動中
            timer.invalidate()
            timer = nil
            advanceLabel.isEnabled = true
            returnLabel.isEnabled = true
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.image = images[index]
    }
    
    
    @IBAction func back(_ segue: UIStoryboardSegue){
        
    }


}


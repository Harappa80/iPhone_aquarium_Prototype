//
//  ViewController2.swift
//  aquarium
//
//  Created by Hara Kazuki on 2019/07/17.
//  Copyright © 2019 Kazuki Hara. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var result_name = ""
    @IBOutlet weak var amimal_image: UIImageView!
    @IBOutlet weak var animal_name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        result_name = appDelegate.animal_name
        //TextViewの生成
        let myTextView: UITextView = UITextView(frame: CGRect(x:16, y:176, width:353 , height:353))
        if let filePath = Bundle.main.path(forResource: appDelegate.animal_name, ofType: "txt"), let str = try? String(contentsOfFile: filePath, encoding: String.Encoding.utf8) {
            myTextView.text = str
            myTextView.layer.masksToBounds = true
            myTextView.layer.cornerRadius = 20.0
            myTextView.layer.borderWidth = 7
            myTextView.backgroundColor = UIColor.black
            myTextView.layer.borderColor = UIColor.white.cgColor
            myTextView.backgroundColor = UIColor(red:0.0,green:0.0,blue:0.0,alpha:0.3)
            myTextView.font = UIFont(name: "HiraMaruProN-W4", size: 18)
            myTextView.textColor = UIColor.white
            myTextView.textAlignment = NSTextAlignment.left
            myTextView.dataDetectorTypes = UIDataDetectorTypes.all
            myTextView.isEditable = false
            self.view.addSubview(myTextView)
            
        amimal_image.image = UIImage(named: result_name + ".png")
        animal_name.text = result_name
        
            
        }
    }

}

//
//  ViewController.swift
//  aquarium
//
//  Created by Hara Kazuki on 2018/05/26.
//  Copyright © 2018年 Kazuki Hara. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var returnButton: UIButton!
    
    
    //作成したクラスを元にインスタンス化
    let imagePicker = UIImagePickerController()
    let classifier = Classifier()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ImagePickerファイルのデリゲート
        imagePicker.delegate = self
        //Classifierファイルのデリゲート
        classifier.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func openLibrary(_ sender: UIButton) {
        openPickerController(with: .photoLibrary)
    }

    @IBAction func getphoto(_ sender: Any) {
        let ipc = UIImagePickerController()
        //デリゲートを指定するUINavigationControllerDelegateと、UIImagePickerControllerDelegateを実装する必要有り
        ipc.delegate = self
        //どこから入手を行うか
        ipc.sourceType = .camera
        //取得した画像を編集するかどうかの指定
        ipc.allowsEditing = true
        // Cameraは全画面で選択
        present(ipc, animated: true, completion: nil)
        
  
    }
    
}


extension ViewController {
    
    /**
     カメラ起動またはフォトライブラリを開く
     */
    private func openPickerController(with type: UIImagePickerControllerSourceType) {
        guard UIImagePickerController.isSourceTypeAvailable(type) else {
            return
        }
        imagePicker.sourceType = type
        self.present(imagePicker, animated: true, completion: nil)
    }
}



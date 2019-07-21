//
//  ViewController+UIImagePickerControllerDelegate.swift
//  aquarium
//
//  Created by Hara Kazuki on 2018/05/26.
//  Copyright © 2018年 Kazuki Hara. All rights reserved.
//
//

import UIKit
import ImagePicker

extension ViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    /**
     画像を選択した直後に呼ばれる
     */
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // pickerを閉じる
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("no image from image picker")
        }
        // 選択した画像を表示
        photoImageView.image = image
        // 分類を行う
        classifier.classify(image: image)
    }
    
    /**
     画像選択をキャンセルした直後に呼ばれる
     */
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

}



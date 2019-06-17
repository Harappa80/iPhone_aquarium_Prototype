//
//  ViewController+UIImagePickerControllerDelegate.swift
//  aquarium
//
//  Created by Hara Kazuki on 2018/05/26.
//  Copyright © 2018年 Kazuki Hara. All rights reserved.
//
//

import UIKit

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

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // 編集後のイメージを取り出し
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            imageView.image = image
            
        // ImagePickerを終了
        dismiss(animated: true, completion: nil)
        
    }
    /// キャンセルされた
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // ImagePickerを終了
        dismiss(animated: true, completion: nil)
    }
    
  
    
    }
    @objc func showResultOfSaveImage(_ image: UIImage, didFinishSavingWithError error: NSError?, contextInfo: UnsafeMutableRawPointer) {
        
        var title = "保存完了"
        var message = "カメラロールに保存しました"
        if error != nil {
            title = "エラー"
            message = "保存に失敗しました"
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        // OKボタンを追加
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        // UIAlertController を表示
        self.present(alert, animated: true, completion: nil)
    }
}


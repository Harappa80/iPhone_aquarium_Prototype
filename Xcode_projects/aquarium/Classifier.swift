//
//  Classifier.swift
//  aquarium
//
//  Created by Hara Kazuki on 2018/05/26.
//  Copyright © 2018年 Kazuki Hara. All rights reserved.
//

import UIKit

class Classifier {
    
    weak var delegate: ClassifierDelegate?
    let model = aquarium()
    
    func classify(image: UIImage){
        guard let buffer = image.getCVPixelBuffer(size: CGSize(width: 100 , height: 100)) else {
            return
        }
        DispatchQueue.global(qos: .userInitiated).async {
            guard let output = try? self.model.prediction(image: buffer) else {
                return
            }
            DispatchQueue.main.async {
                //delegate -> ClassifierDelegate.swift
                let label = output.classLabel
                self.delegate?.didClassify(with: label)

            }
        }
    }
}

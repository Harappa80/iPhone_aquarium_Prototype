//
//  ViewController+ClassifierDelegate.swift
//  aquarium
//
//  Created by Hara Kazuki on 2018/05/27.
//  Copyright © 2018年 Kazuki Hara. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: ClassifierDelegate{
    
    func didClassify(with identifier: String){
        
        performSegue(withIdentifier: "next",sender: nil)
        
        }
        }




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
    func didClassify(with identifier: String) {
        if identifier == "dolphin"{
            self.performSegue(withIdentifier: "iruka", sender: nil)
        }else if identifier == "jellyfish"{
            self.performSegue(withIdentifier: "kurage", sender: nil)
        }else if identifier == "kumanomi" {
            self.performSegue(withIdentifier: "kumanomi", sender: nil)
        }else if identifier == "otter"{
            self.performSegue(withIdentifier: "kawauso", sender: nil)
        }else if identifier == "penguin"{
            self.performSegue(withIdentifier: "penguin", sender: nil)
        }else if identifier == "turtle"{
            self.performSegue(withIdentifier: "umigame", sender: nil)
        }
        }
    }

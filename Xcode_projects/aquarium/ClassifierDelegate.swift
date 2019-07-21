//
//  ClassifierDelegate.swift
//  aquarium
//
//  Created by Hara Kazuki on 2018/05/26.
//  Copyright © 2018年 Kazuki Hara. All rights reserved.
//

import Foundation

protocol ClassifierDelegate: class {
    func didClassify(with identifier: String)
}


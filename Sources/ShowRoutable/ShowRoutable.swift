//
//  ShowRoutable.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit
import Foundation

public protocol ShowRoutable: BaseRoutable {
    
    func show(fromStoryboard name: String)
    func show(fromStoryboard name: String, withIdentifier identifier: String)
    
    func show<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func show<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    
}

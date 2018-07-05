//
//  ShowRoutable+Default.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit
import Foundation

extension ShowRoutable where Self: UIViewController {
    
    public func show(fromStoryboard name: String) {
        show(fromStoryboard: name, withIdentifier: nil, transitionType: .show)
    }
    
    public func show(fromStoryboard name: String, withIdentifier identifier: String) {
        show(fromStoryboard: name, withIdentifier: identifier, transitionType: .show)
    }
    
    public func show<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: nil, type, transitionType: .show, configuration: configuration)
    }
    
    public func show<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .show, configuration: configuration)
    }
    
}

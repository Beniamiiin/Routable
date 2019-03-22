//
//  SetRoutable+Default.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit

extension SetRoutable where Self: UIViewController {
    
    public func set(fromStoryboard name: String) {
        show(fromStoryboard: name, withIdentifier: nil, transitionType: .set)
    }
    
    public func set(fromStoryboard name: String, withIdentifier identifier: String) {
        show(fromStoryboard: name, withIdentifier: identifier, transitionType: .set)
    }
    
    public func set<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: nil, type, transitionType: .set, configuration: configuration)
    }
    
    public func set<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .set, configuration: configuration)
    }
    
}

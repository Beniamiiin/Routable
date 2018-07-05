//
//  AddRoutable+Default.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit
import Foundation

extension AddRoutable where Self: UIViewController {
    
    public func add(fromStoryboard name: String) -> UIViewController {
        return _show(fromStoryboard: name, withIdentifier: nil, transitionType: .add)
    }
    
    public func add(fromStoryboard name: String, withIdentifier identifier: String) -> UIViewController {
        return _show(fromStoryboard: name, withIdentifier: identifier, transitionType: .add)
    }
    
    public func add(in view: UIView, fromStoryboard name: String) -> UIViewController {
        return _show(in: view, fromStoryboard: name, withIdentifier: nil, transitionType: .add)
    }
    
    public func add(in view: UIView, fromStoryboard name: String, withIdentifier identifier: String) -> UIViewController {
        return _show(in: view, fromStoryboard: name, withIdentifier: identifier, transitionType: .add)
    }
    
    public func add<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController {
        return _show(fromStoryboard: name, withIdentifier: nil, type, transitionType: .add, configuration: configuration)
    }
    
    public func add<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController {
        return _show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .add, configuration: configuration)
    }
    
    public func add<T>(in view: UIView, fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController {
        return _show(in: view, fromStoryboard: name, withIdentifier: nil, type, transitionType: .add, configuration: configuration)
    }
    
    public func add<T>(in view: UIView, fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController {
        return _show(in: view, fromStoryboard: name, withIdentifier: identifier, type, transitionType: .add, configuration: configuration)
    }
    
}

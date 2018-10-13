//
//  AddRoutable.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit

public protocol AddRoutable: BaseRoutable {
    
    func add(fromStoryboard name: String) -> UIViewController
    func add(fromStoryboard name: String, withIdentifier identifier: String) -> UIViewController
    
    func add(in view: UIView, fromStoryboard name: String) -> UIViewController
    func add(in view: UIView, fromStoryboard name: String, withIdentifier identifier: String) -> UIViewController
    
    func add<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    func add<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    
    func add<T>(in view: UIView, fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    func add<T>(in view: UIView, fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    
}

//
//  SetRoutable.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit

public protocol SetRoutable: BaseRoutable {
    
    func set(fromStoryboard name: String)
    func set(fromStoryboard name: String, withIdentifier identifier: String)
    
    func set<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func set<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    
}

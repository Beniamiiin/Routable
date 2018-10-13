//
//  SetRoutable.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 13/10/2018.
//

import UIKit

public protocol SetRoutable: BaseRoutable {
    
    func set(fromStoryboard name: String)
    func set(fromStoryboard name: String, withIdentifier identifier: String)
    
    func set<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func set<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    
}

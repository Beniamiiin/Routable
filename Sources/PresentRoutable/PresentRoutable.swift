//
//  PresentRoutable.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit
import Foundation

public protocol PresentRoutable: BaseRoutable {
    
    func present(fromStoryboard name: String)
    func present(fromStoryboard name: String, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle)
    
    func present(fromStoryboard name: String, withIdentifier identifier: String)
    func present(fromStoryboard name: String, withIdentifier identifier: String, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle)
    
    func present<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func present<T>(fromStoryboard name: String, _ type: T.Type, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle, configuration: @escaping (_ moduleInput: T) -> ())
    
    func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle, configuration: @escaping (_ moduleInput: T) -> ())
    
}

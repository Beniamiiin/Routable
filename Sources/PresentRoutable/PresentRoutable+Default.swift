//
//  PresentRoutable+Default.swift
//  Routable
//
//  Created by Beniamin Sarkisian on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

import UIKit
import Foundation

extension PresentRoutable where Self: UIViewController {
    
    public func present(fromStoryboard name: String) {
        show(fromStoryboard: name, withIdentifier: nil, transitionType: .present)
    }
    
    public func present(fromStoryboard name: String, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle) {
        show(fromStoryboard: name, withIdentifier: nil, transitionType: .present, presentationStyle: presentationStyle, transitionStyle: transitionStyle)
    }
    
    public func present(fromStoryboard name: String, withIdentifier identifier: String) {
        show(fromStoryboard: name, withIdentifier: identifier, transitionType: .present)
    }
    
    public func present(fromStoryboard name: String, withIdentifier identifier: String, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle) {
        show(fromStoryboard: name, withIdentifier: identifier, transitionType: .present, presentationStyle: presentationStyle, transitionStyle: transitionStyle)
    }
    
    public func present<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: nil, type, transitionType: .present, configuration: configuration)
    }
    
    public func present<T>(fromStoryboard name: String, _ type: T.Type, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: nil, type, transitionType: .present, presentationStyle: presentationStyle, transitionStyle: transitionStyle, configuration: configuration)
    }
    
    public func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .present, configuration: configuration)
    }
    
    public func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .present, presentationStyle: presentationStyle, transitionStyle: transitionStyle, configuration: configuration)
    }
    
}

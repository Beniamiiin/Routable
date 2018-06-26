//
//  Routable.swift
//  Routable
//
//  Created by Beniamin Sarkisyan on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

public protocol Routable {
    
    func add(fromStoryboard name: String) -> UIViewController
    func add(fromStoryboard name: String, withIdentifier identifier: String) -> UIViewController
    
    func add(in view: UIView, fromStoryboard name: String) -> UIViewController
    func add(in view: UIView, fromStoryboard name: String, withIdentifier identifier: String) -> UIViewController
    
    func show(fromStoryboard name: String)
    func show(fromStoryboard name: String, withIdentifier identifier: String)
    
    func present(fromStoryboard name: String)
    func present(fromStoryboard name: String, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle)
    
    func present(fromStoryboard name: String, withIdentifier identifier: String)
    func present(fromStoryboard name: String, withIdentifier identifier: String, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle)
    
    func add<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    func add<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    
    func add<T>(in view: UIView, fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    func add<T>(in view: UIView, fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) -> UIViewController
    
    func show<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func show<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    
    func present<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func present<T>(fromStoryboard name: String, _ type: T.Type, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle, configuration: @escaping (_ moduleInput: T) -> ())
    
    func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ())
    func present<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, presentationStyle: UIModalPresentationStyle, transitionStyle: UIModalTransitionStyle, configuration: @escaping (_ moduleInput: T) -> ())
    
}

extension UIViewController: Routable {
    
}

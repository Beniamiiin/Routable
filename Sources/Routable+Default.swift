//
//  Routable.swift
//  Routable
//
//  Created by Beniamin Sarkisyan on 24/05/2018.
//  Copyright © 2018 bsarkisian.me. All rights reserved.
//

internal enum TransitionType {
    case add
    case show
    case present
}

extension Routable where Self: UIViewController {
    
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
    
    public func show(fromStoryboard name: String) {
        show(fromStoryboard: name, withIdentifier: nil, transitionType: .show)
    }
    
    public func show(fromStoryboard name: String, withIdentifier identifier: String) {
        show(fromStoryboard: name, withIdentifier: identifier, transitionType: .show)
    }
    
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
    
    public func show<T>(fromStoryboard name: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: nil, type, transitionType: .show, configuration: configuration)
    }
    
    public func show<T>(fromStoryboard name: String, withIdentifier identifier: String, _ type: T.Type, configuration: @escaping (_ moduleInput: T) -> ()) {
        show(fromStoryboard: name, withIdentifier: identifier, type, transitionType: .show, configuration: configuration)
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
